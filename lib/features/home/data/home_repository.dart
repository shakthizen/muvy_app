import 'package:dio/dio.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/api_endpoints.dart';
import 'models/movie.dart';
import 'models/tv_show.dart';

class HomeRepository {
  final Dio _dio = DioClient().dio;

  Future<List<Movie>> getTrendingMovies() async {
    try {
      final response = await _dio.get(ApiEndpoints.trending);
      // For now, filtering only movies from trending/all endpoint OR using simpler endpoints
      // To strictly follow typical usage, let's stick to movie endpoints for these lists:
      final results = (response.data['results'] as List)
          .where((item) => item['media_type'] == 'movie')
          .map((json) => Movie.fromJson(json))
          .toList();
      return results;
    } catch (e) {
      // In a real app, handle error properly
      print('Error fetching trending movies: $e');
      return [];
    }
  }

  Future<List<Movie>> getPopularMovies() async {
    try {
      final response = await _dio.get(ApiEndpoints.popularMovies);
      return (response.data['results'] as List)
          .map((json) => Movie.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching popular movies: $e');
      return [];
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    try {
      final response = await _dio.get(ApiEndpoints.topRatedMovies);
      return (response.data['results'] as List)
          .map((json) => Movie.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching top rated movies: $e');
      return [];
    }
  }
  
  Future<List<TvShow>> getPopularTv() async {
    try {
      final response = await _dio.get(ApiEndpoints.popularTv);
      return (response.data['results'] as List)
          .map((json) => TvShow.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching popular TV: $e');
      return [];
    }
  }

    Future<List<TvShow>> getTopRatedTv() async {
    try {
      final response = await _dio.get(ApiEndpoints.topRatedTv);
      return (response.data['results'] as List)
          .map((json) => TvShow.fromJson(json))
          .toList();
    } catch (e) {
      print('Error fetching top rated TV: $e');
      return [];
    }
  }
}
