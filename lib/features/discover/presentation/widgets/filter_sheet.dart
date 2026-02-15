import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class FilterSheet extends StatelessWidget {
  final String currentSort;
  final Function(String) onSortChanged;

  const FilterSheet({
    super.key,
    required this.currentSort,
    required this.onSortChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sort By',
            style: AppTextStyles.headlineSmall,
          ),
          const SizedBox(height: 16),
          _buildSortOption(context, 'Popularity', 'popularity.desc'),
          _buildSortOption(context, 'Release Date', 'release_date.desc'),
          _buildSortOption(context, 'Rating', 'vote_average.desc'),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildSortOption(BuildContext context, String label, String value) {
    final isSelected = currentSort == value;
    return InkWell(
      onTap: () => onSortChanged(value),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: AppTextStyles.bodyLarge.copyWith(
                color: isSelected ? AppColors.textPrimary : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
