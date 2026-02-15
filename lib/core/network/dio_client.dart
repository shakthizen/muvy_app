import 'package:dio/dio.dart';
import '../../env/env.dart';
import 'api_endpoints.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  late final Dio dio;

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    dio = Dio(BaseOptions(
      baseUrl: ApiEndpoints.tmdbBaseUrl,
      queryParameters: {
        'api_key': Env.tmdbApiKey,
        'language': 'en-US',
      },
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (object) => print('DO_LOG: $object'),
    ));
  }
}
