import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'discover_repository.dart';
import 'models/genre.dart';
import '../../home/data/models/movie.dart';

part 'discover_providers.g.dart';

@riverpod
DiscoverRepository discoverRepository(Ref ref) {
  return DiscoverRepository();
}

@riverpod
Future<List<Genre>> movieGenres(Ref ref) {
  return ref.watch(discoverRepositoryProvider).getMovieGenres();
}

@riverpod
Future<List<Genre>> tvGenres(Ref ref) {
  return ref.watch(discoverRepositoryProvider).getTvGenres();
}

@riverpod
Future<List<Movie>> discoveredMovies(Ref ref, {int? genreId, String? sortBy}) {
  return ref
      .watch(discoverRepositoryProvider)
      .discoverMovies(genreId: genreId, sortBy: sortBy);
}
