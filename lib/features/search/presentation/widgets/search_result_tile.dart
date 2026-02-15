import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../../home/data/models/movie.dart';
import '../../../home/data/models/tv_show.dart';

class SearchResultTile extends StatelessWidget {
  final dynamic result; // Movie or TvShow

  const SearchResultTile({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    // Extract data based on type
    final String title;
    final String? posterPath;
    final String? overview;
    final double? voteAverage;
    final String type;

    if (result is Movie) {
      final movie = result as Movie;
      title = movie.title;
      posterPath = movie.posterPath;
      overview = movie.overview;
      voteAverage = movie.voteAverage;
      type = 'Movie';
    } else if (result is TvShow) {
      final tv = result as TvShow;
      title = tv.name;
      posterPath = tv.posterPath;
      overview = tv.overview;
      voteAverage = tv.voteAverage;
      type = 'TV Show';
    } else {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () {
        // Navigate to details (to be implemented)
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Poster
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(12),
              ),
              child: CachedNetworkImage(
                imageUrl: posterPath != null
                    ? '${ApiEndpoints.tmdbImageBase}w185$posterPath'
                    : '',
                width: 80,
                height: 120,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  width: 80,
                  height: 120,
                  color: AppColors.background,
                  child: const Icon(
                    Icons.broken_image,
                    color: AppColors.textMuted,
                  ),
                ),
                placeholder: (context, url) =>
                    Container(width: 80, height: 120, color: AppColors.surface),
              ),
            ),

            // Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            type,
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          voteAverage.toStringAsFixed(1),
                          style: AppTextStyles.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      overview,
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
