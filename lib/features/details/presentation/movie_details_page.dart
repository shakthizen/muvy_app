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

@RoutePage()
class MovieDetailsPage extends ConsumerWidget {
  final int movieId;

  const MovieDetailsPage({super.key, @PathParam('id') required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsAsync = ref.watch(movieDetailsProvider(movieId));
    final creditsAsync = ref.watch(movieCreditsProvider(movieId));
    final similarAsync = ref.watch(similarMoviesProvider(movieId));

    return Scaffold(
      backgroundColor: AppColors.background,
      body: detailsAsync.when(
        data: (movie) {
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
                      if (movie.backdropPath != null)
                        CachedNetworkImage(
                          imageUrl:
                              '${ApiEndpoints.tmdbImageBase}original${movie.backdropPath}',
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
                        movie.title,
                        style: AppTextStyles.headlineMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Meta Info (Year • Runtime • Rating)
                      Row(
                        children: [
                          if (movie.releaseDate != null) ...[
                            Text(
                              movie.releaseDate!.split('-').first,
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
                            '${movie.runtime} min',
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
                            movie.voteAverage.toStringAsFixed(1),
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
                        children: movie.genres.map((genre) {
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
                        movie.overview,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),

              // Cast
              SliverToBoxAdapter(
                child: creditsAsync.when(
                  data: (cast) => CastList(cast: cast),
                  error: (_, __) => const SizedBox.shrink(),
                  loading: () => const SizedBox(
                    height: 160,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),

              // Similar Movies
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Similar Movies',
                        style: AppTextStyles.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: 16),
                    similarAsync.when(
                      data: (movies) => HorizontalList(
                        items: movies,
                        onItemTap: (movie) {
                          context.pushRoute(
                            MovieDetailsRoute(movieId: movie.id),
                          );
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
