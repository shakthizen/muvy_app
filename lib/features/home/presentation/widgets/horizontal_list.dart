import 'package:flutter/material.dart';
import '../../data/models/movie.dart';
import '../../data/models/tv_show.dart';
import 'movie_card.dart';

class HorizontalList extends StatelessWidget {
  final List<dynamic> items; // Can be List<Movie> or List<TvShow>
  final Function(dynamic) onItemTap;

  const HorizontalList({
    super.key,
    required this.items,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Adjust height as needed for cards
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          String title = '';
          String? posterPath;
          double voteAverage = 0.0;

          // Adapt based on type
          if (item is Movie) {
            title = item.title;
            posterPath = item.posterPath;
            voteAverage = item.voteAverage;
          } else if (item is TvShow) {
            title = item.name;
            posterPath = item.posterPath;
            voteAverage = item.voteAverage;
          }

          return MovieCard(
            posterPath: posterPath,
            title: title,
            voteAverage: voteAverage,
            onTap: () => onItemTap(item),
          );
        },
      ),
    );
  }
}
