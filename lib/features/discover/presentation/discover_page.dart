import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/discover_providers.dart';
import '../data/models/genre.dart';
import 'widgets/filter_sheet.dart';
import 'widgets/genre_chip.dart';
import '../../home/presentation/widgets/movie_card.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

@RoutePage()
class DiscoverPage extends ConsumerStatefulWidget {
  const DiscoverPage({super.key});

  @override
  ConsumerState<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  int? _selectedGenreId;
  String _sortBy = 'popularity.desc';
  String _sortByLabel = 'Popularity';

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => FilterSheet(
        currentSort: _sortBy,
        onSortChanged: (value) {
          setState(() {
            _sortBy = value;
            if (value == 'popularity.desc')
              _sortByLabel = 'Popularity';
            else if (value == 'release_date.desc')
              _sortByLabel = 'Release Date';
            else if (value == 'vote_average.desc')
              _sortByLabel = 'Rating';
          });
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final genresAsync = ref.watch(movieGenresProvider);
    final moviesAsync = ref.watch(
      discoveredMoviesProvider(genreId: _selectedGenreId, sortBy: _sortBy),
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Discover', style: AppTextStyles.headlineSmall),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            onPressed: _showFilterSheet,
          ),
        ],
      ),
      body: Column(
        children: [
          // Genres list
          SizedBox(
            height: 60,
            child: genresAsync.when(
              data: (genres) => ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: genres.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return GenreChip(
                      genre: const Genre(id: -1, name: 'All'),
                      isSelected: _selectedGenreId == null,
                      onTap: () => setState(() => _selectedGenreId = null),
                    );
                  }
                  final genre = genres[index - 1];
                  return GenreChip(
                    genre: genre,
                    isSelected: _selectedGenreId == genre.id,
                    onTap: () => setState(() => _selectedGenreId = genre.id),
                  );
                },
              ),
              error: (_, __) => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),

          // Sort label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Text(
                  'Sorted by: ',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  _sortByLabel,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Movies Grid
          Expanded(
            child: moviesAsync.when(
              data: (movies) {
                if (movies.isEmpty) {
                  return Center(
                    child: Text(
                      'No movies found',
                      style: AppTextStyles.bodyMedium,
                    ),
                  );
                }
                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return MovieCard(
                      title: movie.title,
                      posterPath: movie.posterPath,
                      voteAverage: movie.voteAverage,
                      onTap: () {
                        // TODO: Navigate to detail
                      },
                    );
                  },
                );
              },
              error: (error, _) => Center(
                child: Text('Error: $error', style: AppTextStyles.bodyMedium),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}
