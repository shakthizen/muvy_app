import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/search_providers.dart';
import 'widgets/search_result_tile.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _query = query;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchResultsAsync = ref.watch(searchResultsProvider(_query));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: TextField(
          controller: _searchController,
          onChanged: _onSearchChanged,
          style: AppTextStyles.bodyLarge,
          decoration: InputDecoration(
            hintText: 'Search movies & TV shows...',
            hintStyle: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.textMuted,
            ),
            border: InputBorder.none,
            suffixIcon: _query.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, color: AppColors.textMuted),
                    onPressed: () {
                      _searchController.clear();
                      _onSearchChanged('');
                    },
                  )
                : const Icon(Icons.search, color: AppColors.textMuted),
          ),
        ),
      ),
      body: _query.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.movie_creation_outlined,
                    size: 64,
                    color: AppColors.textMuted,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Search for your favorite content',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.textMuted,
                    ),
                  ),
                ],
              ),
            )
          : searchResultsAsync.when(
              data: (results) {
                if (results.isEmpty) {
                  return Center(
                    child: Text(
                      'No results found for "$_query"',
                      style: AppTextStyles.bodyLarge,
                    ),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return SearchResultTile(result: results[index]);
                  },
                );
              },
              error: (error, stack) => Center(
                child: Text('Error: $error', style: AppTextStyles.bodyMedium),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
    );
  }
}
