import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_client.dart';
import '../../home/data/models/movie.dart';
import '../../home/data/models/tv_show.dart';
import 'details_repository.dart';
import 'models/cast.dart';
import 'models/episode.dart';
import 'models/movie_detail.dart';
import 'models/tv_detail.dart';

part 'details_providers.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient();
}

@riverpod
DetailsRepository detailsRepository(Ref ref) {
  return DetailsRepository(ref.watch(apiClientProvider));
}

@riverpod
Future<MovieDetail> movieDetails(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getMovieDetails(id);
}

@riverpod
Future<TvDetail> tvDetails(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getTvDetails(id);
}

@riverpod
Future<List<Cast>> movieCredits(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getMovieCredits(id);
}

@riverpod
Future<List<Cast>> tvCredits(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getTvCredits(id);
}

@riverpod
Future<List<Movie>> similarMovies(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getSimilarMovies(id);
}

@riverpod
Future<List<TvShow>> similarTv(Ref ref, int id) {
  return ref.watch(detailsRepositoryProvider).getSimilarTv(id);
}

@riverpod
Future<List<Episode>> seasonDetails(
  Ref ref,
  int tvId,
  int seasonNumber,
) {
  return ref.watch(detailsRepositoryProvider).getTvSeason(tvId, seasonNumber);
}
