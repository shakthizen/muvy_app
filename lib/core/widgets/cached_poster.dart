import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../network/api_endpoints.dart';
import '../theme/app_colors.dart';
import 'shimmer_loading.dart';

class CachedPoster extends StatelessWidget {
  final String? posterPath;
  final double width;
  final double height;
  final double borderRadius;
  final bool isBackdrop;

  const CachedPoster({
    super.key,
    required this.posterPath,
    this.width = 100,
    this.height = 150,
    this.borderRadius = 12,
    this.isBackdrop = false,
  });

  @override
  Widget build(BuildContext context) {
    if (posterPath == null) {
      return _buildPlaceholder();
    }

    final size = isBackdrop ? AppConstants.backdropSize : AppConstants.posterSize;
    final url = '${ApiEndpoints.tmdbImageBase}$size$posterPath';

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => ShimmerLoading(
          width: width,
          height: height, 
          borderRadius: borderRadius,
        ),
        errorWidget: (context, url, error) => _buildPlaceholder(),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.surfaceGlass,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Icon(
        isBackdrop ? Icons.image : Icons.movie_creation_outlined,
        color: AppColors.textMuted,
      ),
    );
  }
}
