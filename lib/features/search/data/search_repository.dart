import 'package:dio/dio.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../home/data/models/movie.dart';
import '../../home/data/models/tv_show.dart';

class SearchRepository {
  final Dio _dio = DioClient().dio;

  Future<List<dynamic>> searchMulti(String query) async {
    if (query.isEmpty) return [];
    try {
      final response = await _dio.get(
        ApiEndpoints.searchMulti,
        queryParameters: {'query': query},
      );
      
      final results = (response.data['results'] as List).where((item) {
        return item['media_type'] == 'movie' || item['media_type'] == 'tv';
      }).map((json) {
        if (json['media_type'] == 'movie') {
          return Movie.fromJson(json);
        } else {
          return TvShow.fromJson(json);
        }
      }).toList();

      return results;
    } catch (e) {
      print('Error searching multi: $e');
      return [];
    }
  }
}
