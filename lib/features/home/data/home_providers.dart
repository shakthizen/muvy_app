import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'home_repository.dart';
import 'models/movie.dart';
import 'models/tv_show.dart';

part 'home_providers.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepository();
}

@riverpod
Future<List<Movie>> trendingMovies(Ref ref) {
  return ref.watch(homeRepositoryProvider).getTrendingMovies();
}

@riverpod
Future<List<Movie>> popularMovies(Ref ref) {
  return ref.watch(homeRepositoryProvider).getPopularMovies();
}

@riverpod
Future<List<Movie>> topRatedMovies(Ref ref) {
  return ref.watch(homeRepositoryProvider).getTopRatedMovies();
}

@riverpod
Future<List<TvShow>> popularTv(Ref ref) {
  return ref.watch(homeRepositoryProvider).getPopularTv();
}

@riverpod
Future<List<TvShow>> topRatedTv(Ref ref) {
  return ref.watch(homeRepositoryProvider).getTopRatedTv();
}
