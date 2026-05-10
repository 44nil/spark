import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers/queue_provider.dart';
import '../../core/constants/app_colors.dart';
import '../../data/models/feed_item.dart';
import '../reader/reader_screen.dart';
import '../widgets/feed_card.dart';
import '../widgets/loading_shimmer.dart';
import 'daily_progress_bar.dart';
import 'home_header.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(queueProvider.notifier).initialize(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(queueProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: _buildBackground(
        child: SafeArea(
          child: RefreshIndicator(
            color: AppColors.lavender,
            backgroundColor: AppColors.surface,
            onRefresh: () => ref.read(queueProvider.notifier).refresh(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                  sliver: SliverToBoxAdapter(
                    child: HomeHeader(
                      minutesRemaining: state.minutesRemaining,
                      itemCount: state.items.length,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  sliver: SliverToBoxAdapter(child: SizedBox.shrink()),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: DailyProgressBar(
                      completedMinutes: state.completedMinutes,
                      totalMinutes: state.totalMinutes,
                      minutesRemaining: state.minutesRemaining,
                      progress: state.progress,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                if (state.isLoading && state.items.isEmpty)
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: const SliverToBoxAdapter(child: LoadingShimmer()),
                  )
                else if (state.error != null && state.items.isEmpty)
                  SliverFillRemaining(child: _errorView(state.error!))
                else
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final item = state.items[index];
                          return FeedCard(
                            item: item,
                            isRead: state.readStatus[item.id] == true,
                            index: index,
                            onTap: () => _openReader(
                              item,
                              state.readStatus[item.id] == true,
                            ),
                            onMarkRead: () => _toggleRead(item.id, state),
                          );
                        },
                        childCount: state.items.length,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackground({required Widget child}) {
    return Stack(
      children: [
        // Soft ambient glows
        Positioned(
          top: -100,
          right: -80,
          child: _glow(AppColors.lavender, 280),
        ),
        Positioned(
          bottom: 100,
          left: -100,
          child: _glow(AppColors.pink, 240),
        ),
        Positioned(
          top: 300,
          left: -60,
          child: _glow(AppColors.mint, 160),
        ),
        child,
      ],
    );
  }

  Widget _glow(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color.withValues(alpha: 0.12),
            Colors.transparent,
          ],
        ),
      ),
    );
  }

  Widget _errorView(String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.wifi_off_rounded,
              size: 48,
              color: AppColors.textTertiary,
            ),
            const SizedBox(height: 16),
            Text(
              'İçerik yüklenemedi',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.textPrimary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Aşağı çekerek yenilemeyi dene',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void _openReader(FeedItem item, bool isRead) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ReaderScreen(
          item: item,
          isRead: isRead,
          onMarkRead: () => _toggleRead(item.id, ref.read(queueProvider)),
          notifier: ref.read(queueProvider.notifier),
        ),
      ),
    );
  }

  void _toggleRead(String itemId, QueueState state) {
    if (state.readStatus[itemId] == true) {
      ref.read(queueProvider.notifier).markUnread(itemId);
    } else {
      ref.read(queueProvider.notifier).markRead(itemId);
    }
  }
}
