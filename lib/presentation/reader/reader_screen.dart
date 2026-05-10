import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/providers/queue_provider.dart';
import '../../core/constants/app_colors.dart';
import '../../data/models/feed_item.dart';
import '../../data/models/feed_source.dart';

class ReaderScreen extends StatefulWidget {
  final FeedItem item;
  final bool isRead;
  final VoidCallback onMarkRead;
  final QueueNotifier notifier;

  const ReaderScreen({
    super.key,
    required this.item,
    required this.isRead,
    required this.onMarkRead,
    required this.notifier,
  });

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  late bool _isRead;
  FeedItem? _loadedItem;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _isRead = widget.isRead;
    _loadContent();
  }

  Future<void> _loadContent() async {
    final loaded = widget.notifier.loadContent(widget.item);
    if (mounted) {
      setState(() {
        _loadedItem = loaded;
        _isLoading = false;
      });
    }
  }

  void _toggleRead() {
    widget.onMarkRead();
    setState(() => _isRead = !_isRead);
  }

  @override
  Widget build(BuildContext context) {
    final item = _loadedItem ?? widget.item;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            _ReaderAppBar(
              item: item,
              isRead: _isRead,
              onBack: () => Navigator.of(context).pop(),
              onMarkRead: _toggleRead,
            ),
            Expanded(
              child: _isLoading
                  ? _LoadingView()
                  : item.hasContent
                      ? _NativeReader(item: item)
                      : _FallbackView(item: item),
            ),
          ],
        ),
      ),
    );
  }
}

class _NativeReader extends StatelessWidget {
  final FeedItem item;
  const _NativeReader({required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            item.title,
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 1.3,
              letterSpacing: -0.3,
            ),
          ).animate().fadeIn(duration: 300.ms),

          const SizedBox(height: 12),

          // Meta row
          Row(
            children: [
              Container(
                width: 3,
                height: 14,
                decoration: BoxDecoration(
                  color: item.sourceColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                item.sourceName,
                style: GoogleFonts.plusJakartaSans(
                  color: item.sourceColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                item.contentType == ContentType.article
                    ? Icons.menu_book_rounded
                    : Icons.headphones_rounded,
                size: 12,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: 4),
              Text(
                '${item.estimatedMinutes} dk',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.textSecondary,
                  fontSize: 13,
                ),
              ),
            ],
          ).animate().fadeIn(delay: 100.ms, duration: 300.ms),

          const SizedBox(height: 24),

          Divider(color: AppColors.cardBorder, height: 1),

          const SizedBox(height: 24),

          // Article content
          Html(
            data: item.content!,
            style: {
              'body': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
                backgroundColor: AppColors.background,
                color: AppColors.textPrimary,
                fontFamily: 'Plus Jakarta Sans',
                fontSize: FontSize(17),
                lineHeight: LineHeight(1.75),
              ),
              'p': Style(
                color: AppColors.textPrimary,
                fontSize: FontSize(17),
                lineHeight: LineHeight(1.75),
                margin: Margins.only(bottom: 20),
              ),
              'h1': Style(
                color: AppColors.textPrimary,
                fontSize: FontSize(24),
                fontWeight: FontWeight.w700,
                lineHeight: LineHeight(1.3),
                margin: Margins.only(top: 32, bottom: 12),
              ),
              'h2': Style(
                color: AppColors.textPrimary,
                fontSize: FontSize(20),
                fontWeight: FontWeight.w700,
                lineHeight: LineHeight(1.35),
                margin: Margins.only(top: 28, bottom: 10),
              ),
              'h3': Style(
                color: AppColors.textPrimary,
                fontSize: FontSize(18),
                fontWeight: FontWeight.w600,
                margin: Margins.only(top: 24, bottom: 8),
              ),
              'a': Style(
                color: AppColors.lavender,
                textDecoration: TextDecoration.none,
              ),
              'strong, b': Style(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w700,
              ),
              'em, i': Style(
                color: AppColors.textSecondary,
              ),
              'blockquote': Style(
                color: AppColors.textSecondary,
                fontSize: FontSize(16),
                lineHeight: LineHeight(1.7),
                margin: Margins.symmetric(vertical: 20),
                padding: HtmlPaddings.only(left: 16),
                border: Border(
                  left: BorderSide(color: AppColors.lavender, width: 3),
                ),
              ),
              'code': Style(
                color: AppColors.mint,
                backgroundColor: AppColors.surface,
                fontSize: FontSize(14),
                padding: HtmlPaddings.symmetric(horizontal: 6, vertical: 2),
              ),
              'pre': Style(
                backgroundColor: AppColors.surface,
                padding: HtmlPaddings.all(16),
                margin: Margins.symmetric(vertical: 16),
              ),
              'pre code': Style(
                color: AppColors.mint,
                fontSize: FontSize(14),
                lineHeight: LineHeight(1.6),
                backgroundColor: Colors.transparent,
                padding: HtmlPaddings.zero,
              ),
              'ul, ol': Style(
                margin: Margins.only(bottom: 20),
                padding: HtmlPaddings.only(left: 20),
              ),
              'li': Style(
                color: AppColors.textPrimary,
                fontSize: FontSize(17),
                lineHeight: LineHeight(1.7),
                margin: Margins.only(bottom: 6),
              ),
              'img': Style(
                margin: Margins.symmetric(vertical: 16),
              ),
              'hr': Style(
                margin: Margins.symmetric(vertical: 24),
                color: AppColors.cardBorder,
              ),
            },
          ).animate().fadeIn(delay: 150.ms, duration: 400.ms),
        ],
      ),
    );
  }
}

class _FallbackView extends StatelessWidget {
  final FeedItem item;
  const _FallbackView({required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 1.3,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 24),
          if (item.description.isNotEmpty)
            Text(
              item.description.replaceAll(RegExp(r'<[^>]*>'), ''),
              style: GoogleFonts.plusJakartaSans(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.7,
              ),
            ),
          const SizedBox(height: 40),
          // Podcast/video placeholder
          if (item.contentType != ContentType.article)
            _PodcastCard(item: item),
        ],
      ),
    );
  }
}

class _PodcastCard extends StatelessWidget {
  final FeedItem item;
  const _PodcastCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: item.sourceColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: item.sourceColor.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              item.contentType == ContentType.podcast
                  ? Icons.headphones_rounded
                  : Icons.play_circle_outline_rounded,
              color: item.sourceColor,
              size: 36,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            item.sourceName,
            style: GoogleFonts.plusJakartaSans(
              color: item.sourceColor,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${item.estimatedMinutes} dakika',
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Podcast ve videolar uygulamada oynatılamaz.\nBağlantıya tıklayarak açabilirsin.',
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textTertiary,
              fontSize: 13,
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppColors.lavender,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'İçerik hazırlanıyor...',
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReaderAppBar extends StatelessWidget {
  final FeedItem item;
  final bool isRead;
  final VoidCallback onBack;
  final VoidCallback onMarkRead;

  const _ReaderAppBar({
    required this.item,
    required this.isRead,
    required this.onBack,
    required this.onMarkRead,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        color: AppColors.background,
        padding: const EdgeInsets.fromLTRB(4, 8, 12, 8),
        child: Row(
          children: [
            IconButton(
              onPressed: onBack,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.textPrimary,
                size: 20,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.sourceName,
                    style: GoogleFonts.plusJakartaSans(
                      color: item.sourceColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.title,
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.textPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            _ReadToggle(isRead: isRead, onTap: onMarkRead),
          ],
        ),
      ),
    );
  }
}

class _ReadToggle extends StatelessWidget {
  final bool isRead;
  final VoidCallback onTap;

  const _ReadToggle({required this.isRead, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isRead
              ? AppColors.lavender.withValues(alpha: 0.15)
              : Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isRead ? AppColors.lavender : AppColors.cardBorder,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isRead ? Icons.check_rounded : Icons.radio_button_unchecked_rounded,
              size: 14,
              color: isRead ? AppColors.lavender : AppColors.textSecondary,
            ),
            const SizedBox(width: 5),
            Text(
              isRead ? 'Okundu' : 'Okunmadı',
              style: GoogleFonts.plusJakartaSans(
                color: isRead ? AppColors.lavender : AppColors.textSecondary,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
