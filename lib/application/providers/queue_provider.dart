import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/feed_item.dart';
import '../../data/repositories/queue_repository.dart';
import '../../data/static/all_articles.dart';

final queueRepositoryProvider = Provider((_) => QueueRepository());

class QueueState {
  final List<FeedItem> items;
  final Map<String, bool> readStatus;
  final bool isLoading;
  final String? error;

  const QueueState({
    this.items = const [],
    this.readStatus = const {},
    this.isLoading = false,
    this.error,
  });

  QueueState copyWith({
    List<FeedItem>? items,
    Map<String, bool>? readStatus,
    bool? isLoading,
    String? error,
  }) {
    return QueueState(
      items: items ?? this.items,
      readStatus: readStatus ?? this.readStatus,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  int get totalMinutes =>
      items.fold(0, (sum, item) => sum + item.estimatedMinutes);

  int get completedMinutes => items
      .where((item) => readStatus[item.id] == true)
      .fold(0, (sum, item) => sum + item.estimatedMinutes);

  int get minutesRemaining => (totalMinutes - completedMinutes).clamp(0, 9999);

  double get progress =>
      totalMinutes == 0 ? 0 : completedMinutes / totalMinutes;
}

class QueueNotifier extends StateNotifier<QueueState> {
  QueueNotifier(this._queueRepo) : super(const QueueState(isLoading: true));

  final QueueRepository _queueRepo;

  static final _allArticles = getAllStaticArticles();

  Future<void> initialize() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final readStatus = await _queueRepo.getReadStatus();
      final queue =
          await _queueRepo.getTodayQueue(_allArticles) ??
          await _queueRepo.buildDailyQueue(_allArticles);
      state = state.copyWith(
        items: queue,
        readStatus: readStatus,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final readStatus = await _queueRepo.getReadStatus();
      final queue = await _queueRepo.buildDailyQueue(_allArticles);
      state = state.copyWith(
        items: queue,
        readStatus: readStatus,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> markRead(String itemId) async {
    await _queueRepo.markRead(itemId);
    final updated = Map<String, bool>.from(state.readStatus);
    updated[itemId] = true;
    state = state.copyWith(readStatus: updated);
  }

  Future<void> markUnread(String itemId) async {
    await _queueRepo.markUnread(itemId);
    final updated = Map<String, bool>.from(state.readStatus);
    updated.remove(itemId);
    state = state.copyWith(readStatus: updated);
  }

  FeedItem loadContent(FeedItem item) => item;
}

final queueProvider =
    StateNotifierProvider<QueueNotifier, QueueState>((ref) {
  return QueueNotifier(ref.watch(queueRepositoryProvider));
});
