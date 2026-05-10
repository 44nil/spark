import '../models/feed_item.dart';
import 'startup_articles.dart';
import 'kodlama_articles.dart';
import 'pazarlama_articles.dart';
import 'vizyon_articles.dart';

List<FeedItem> getAllStaticArticles() {
  return [
    ...startupArticles,
    ...kodlamaArticles,
    ...pazarlamaArticles,
    ...vizyonArticles,
  ].map((a) => a.toFeedItem()).toList();
}
