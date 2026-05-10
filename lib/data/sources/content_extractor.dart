import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;

class ContentExtractor {
  static const _timeout = Duration(seconds: 20);

  static const _removeSelectors = [
    'script', 'style', 'noscript', 'iframe',
    'nav', 'header', 'footer', 'aside',
    '[class*="nav"]', '[class*="menu"]', '[class*="sidebar"]',
    '[class*="footer"]', '[class*="header"]',
    '[class*="advertisement"]', '[class*="banner"]',
    '[class*="popup"]', '[class*="modal"]', '[class*="cookie"]',
    '[class*="share"]', '[class*="social"]', '[class*="related"]',
    '[class*="comment"]', '[class*="subscribe"]', '[class*="newsletter"]',
    '[id*="nav"]', '[id*="footer"]', '[id*="header"]',
    '[id*="sidebar"]', '[id*="comment"]',
  ];

  static const _contentSelectors = [
    'article',
    '[role="main"]',
    'main',
    '.post-content',
    '.entry-content',
    '.article-body',
    '.article-content',
    '.post-body',
    '.content-body',
    '.story-body',
    '.blog-post',
    '.prose',
    '#content',
    '#main-content',
    '#article-body',
  ];

  static Future<String?> extract(String url) async {
    try {
      final response = await http
          .get(
            Uri.parse(url),
            headers: {
              'User-Agent':
                  'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) '
                  'AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1',
            },
          )
          .timeout(_timeout);

      if (response.statusCode != 200) return null;

      final doc = html_parser.parse(response.body);
      _removeNoise(doc);

      final content = _findMainContent(doc);
      if (content == null) return null;

      _cleanContent(content);

      final html = content.innerHtml.trim();
      return html.isEmpty ? null : html;
    } catch (_) {
      return null;
    }
  }

  static void _removeNoise(dom.Document doc) {
    for (final selector in _removeSelectors) {
      try {
        for (final el in doc.querySelectorAll(selector)) {
          el.remove();
        }
      } catch (_) {}
    }
  }

  static dom.Element? _findMainContent(dom.Document doc) {
    for (final selector in _contentSelectors) {
      try {
        final el = doc.querySelector(selector);
        if (el != null && el.text.trim().length > 200) return el;
      } catch (_) {}
    }
    // Fallback: find the div with the most text
    return _findDensestDiv(doc);
  }

  static dom.Element? _findDensestDiv(dom.Document doc) {
    dom.Element? best;
    int bestLen = 0;

    for (final el in doc.querySelectorAll('div, section')) {
      final len = el.text.trim().length;
      if (len > bestLen && len > 300) {
        bestLen = len;
        best = el;
      }
    }
    return best;
  }

  static void _cleanContent(dom.Element el) {
    // Remove empty paragraphs and spans
    for (final empty in el.querySelectorAll('p, span, div')) {
      if (empty.text.trim().isEmpty && empty.querySelector('img') == null) {
        empty.remove();
      }
    }

    // Remove all inline styles and classes (we'll apply our own)
    for (final child in el.querySelectorAll('*')) {
      child.attributes.remove('style');
      child.attributes.remove('class');
      child.attributes.remove('id');
    }

    // Make sure images have no fixed dimensions
    for (final img in el.querySelectorAll('img')) {
      img.attributes.remove('width');
      img.attributes.remove('height');
    }

    // Remove data attributes
    for (final child in el.querySelectorAll('*')) {
      child.attributes.keys
          .where((k) => k.toString().startsWith('data-'))
          .toList()
          .forEach(child.attributes.remove);
    }
  }
}
