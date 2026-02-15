import 'package:dio/dio.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/api_endpoints.dart';
import 'models/genre.dart';
import '../../home/data/models/movie.dart';

class DiscoverRepository {
  final Dio _dio = DioClient().dio;

  Future<List<Genre>> getMovieGenres() async {
    try {
      final response = await _dio.get(ApiEndpoints.movieGenres);
      return (response.data['genres'] as List)
          .map((json) => Genre.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching movie genres: $e');
      return [];
    }
  }

  Future<List<Genre>> getTvGenres() async {
    try {
      final response = await _dio.get(ApiEndpoints.tvGenres);
      return (response.data['genres'] as List)
          .map((json) => Genre.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching TV genres: $e');
      return [];
    }
  }

  Future<List<Movie>> discoverMovies({int? genreId, String? sortBy}) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.discoverMovie,
        queryParameters: {
          if (genreId != null) 'with_genres': genreId,
          if (sortBy != null) 'sort_by': sortBy,
        },
      );
      return (response.data['results'] as List)
          .map((json) => Movie.fromJson(json))
          .toList();
    } catch (e) {
      print('Error discovering movies: $e');
      return [];
    }
  }

  // Could add discoverTv similarly if needed
}
