import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../home/data/models/movie.dart';
import '../../home/data/models/tv_show.dart';
import 'models/cast.dart';
import 'models/episode.dart';
import 'models/movie_detail.dart';
import 'models/tv_detail.dart';

class DetailsRepository {
  final ApiClient _apiClient;

  DetailsRepository(this._apiClient);

  Future<MovieDetail> getMovieDetails(int id) async {
    final response = await _apiClient.get(ApiEndpoints.movieDetails(id));
    return MovieDetail.fromJson(response.data);
  }

  Future<TvDetail> getTvDetails(int id) async {
    final response = await _apiClient.get(ApiEndpoints.tvDetails(id));
    return TvDetail.fromJson(response.data);
  }

  Future<List<Cast>> getMovieCredits(int id) async {
    final response = await _apiClient.get(ApiEndpoints.movieCredits(id));
    final castList = (response.data['cast'] as List)
        .map((e) => Cast.fromJson(e))
        .toList();
    return castList;
  }

  Future<List<Cast>> getTvCredits(int id) async {
    final response = await _apiClient.get(ApiEndpoints.tvCredits(id));
    final castList = (response.data['cast'] as List)
        .map((e) => Cast.fromJson(e))
        .toList();
    return castList;
  }

  Future<List<Movie>> getSimilarMovies(int id) async {
    final response = await _apiClient.get(ApiEndpoints.movieSimilar(id));
    final results = (response.data['results'] as List)
        .map((e) => Movie.fromJson(e))
        .toList();
    return results;
  }

  Future<List<TvShow>> getSimilarTv(int id) async {
    final response = await _apiClient.get(ApiEndpoints.tvSimilar(id));
    final results = (response.data['results'] as List)
        .map((e) => TvShow.fromJson(e))
        .toList();
    return results;
  }

  Future<List<Episode>> getTvSeason(int id, int seasonNumber) async {
    final response = await _apiClient.get(ApiEndpoints.tvSeason(id, seasonNumber));
    final episodes = (response.data['episodes'] as List)
        .map((e) => Episode.fromJson(e))
        .toList();
    return episodes;
  }
}
