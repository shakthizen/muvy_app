import 'package:auto_route/auto_route.dart';
import '../../../../router/app_router.gr.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/glow_button.dart';
import '../../home/presentation/widgets/horizontal_list.dart';
import '../data/details_providers.dart';
import 'widgets/cast_list.dart';
import 'widgets/episode_tile.dart';

@RoutePage()
class TvDetailsPage extends ConsumerStatefulWidget {
  final int tvId;

  const TvDetailsPage({super.key, @PathParam('id') required this.tvId});

  @override
  ConsumerState<TvDetailsPage> createState() => _TvDetailsPageState();
}

class _TvDetailsPageState extends ConsumerState<TvDetailsPage> {
  int _selectedSeason = 1;

  @override
  Widget build(BuildContext context) {
    final detailsAsync = ref.watch(tvDetailsProvider(widget.tvId));
    final creditsAsync = ref.watch(tvCreditsProvider(widget.tvId));
    final similarAsync = ref.watch(similarTvProvider(widget.tvId));
    final episodesAsync = ref.watch(
      seasonDetailsProvider(widget.tvId, _selectedSeason),
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: detailsAsync.when(
        data: (tv) {
          // Verify initial season selection validity once data loads
          if (_selectedSeason > tv.numberOfSeasons && tv.numberOfSeasons > 0) {
            // Defer state update to next frame to avoid build collision
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) setState(() => _selectedSeason = 1);
            });
          }

          return CustomScrollView(
            slivers: [
              // Backdrop AppBar
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                backgroundColor: AppColors.background,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (tv.backdropPath != null)
                        CachedNetworkImage(
                          imageUrl:
                              '${ApiEndpoints.tmdbImageBase}original${tv.backdropPath}',
                          fit: BoxFit.cover,
                        ),
                      // Gradient Overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppColors.background.withValues(alpha: 0.8),
                              AppColors.background,
                            ],
                            stops: const [0.4, 0.8, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        tv.name,
                        style: AppTextStyles.headlineMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Meta Info
                      Row(
                        children: [
                          if (tv.firstAirDate != null) ...[
                            Text(
                              tv.firstAirDate!.split('-').first,
                              style: AppTextStyles.bodyMedium.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.circle,
                              size: 4,
                              color: AppColors.textSecondary,
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            '${tv.numberOfSeasons} Seasons',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.circle,
                            size: 4,
                            color: AppColors.textSecondary,
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            tv.voteAverage.toStringAsFixed(1),
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Genres
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: tv.genres.map((genre) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppColors.textSecondary.withValues(
                                  alpha: 0.2,
                                ),
                              ),
                            ),
                            child: Text(
                              genre.name,
                              style: AppTextStyles.labelSmall,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 24),

                      // Watch Button
                      GlowButton(
                        label: 'Watch Now',
                        onPressed: () {
                          // TODO: Navigate to Player
                        },
                        icon: Icons.play_arrow_rounded,
                      ),
                      const SizedBox(height: 24),

                      // Overview
                      Text('Overview', style: AppTextStyles.headlineSmall),
                      const SizedBox(height: 8),
                      Text(
                        tv.overview,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Season Selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Episodes', style: AppTextStyles.headlineSmall),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButton<int>(
                              value: _selectedSeason,
                              dropdownColor: AppColors.surface,
                              underline: const SizedBox.shrink(),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                              items: List.generate(tv.numberOfSeasons, (index) {
                                final seasonNum = index + 1;
                                return DropdownMenuItem(
                                  value: seasonNum,
                                  child: Text(
                                    'Season $seasonNum',
                                    style: AppTextStyles.bodyMedium,
                                  ),
                                );
                              }),
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedSeason = value;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),

              // Episodes List
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: episodesAsync.when(
                  data: (episodes) => SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final episode = episodes[index];
                      return EpisodeTile(
                        episode: episode,
                        onTap: () {
                          // TODO: Play episode
                        },
                      );
                    }, childCount: episodes.length),
                  ),
                  error: (_, __) =>
                      SliverToBoxAdapter(child: const SizedBox.shrink()),
                  loading: () => SliverToBoxAdapter(
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),

              // Cast
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    creditsAsync.when(
                      data: (cast) => CastList(cast: cast),
                      error: (_, __) => const SizedBox.shrink(),
                      loading: () => const SizedBox(
                        height: 160,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  ],
                ),
              ),

              // Similar TV
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Similar Shows',
                        style: AppTextStyles.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: 16),
                    similarAsync.when(
                      data: (shows) => HorizontalList(
                        items: shows,
                        onItemTap: (show) {
                          context.pushRoute(TvDetailsRoute(tvId: show.id));
                        },
                      ),
                      error: (_, __) => const SizedBox.shrink(),
                      loading: () => const SizedBox(
                        height: 220,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          );
        },
        error: (error, stack) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
