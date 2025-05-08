import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/networking/api_constants.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;
  static final _timeout = const Duration(seconds: 30);

  static Dio getDio() {
    _dio ??= Dio(BaseOptions(
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ));

    _dio!.interceptors.clear();

    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        if (_requiresToken(options.path)) {
          final token =
              await SharedPreference.getSecureString(Constants.userKey);
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          final refreshToken =
              await SharedPreference.getSecureString(Constants.refreshKey);

          if (refreshToken != null) {
            try {
              final response = await _dio!.post(
                '${ApiConstants.apiBaseUrl}api/token/refresh/',
                data: {
                  'refresh': refreshToken,
                },
              );

              final newAccessToken = response.data['access'];

              await SharedPreference.setSecureString(
                  Constants.userKey, newAccessToken);

              error.requestOptions.headers['Authorization'] =
                  'Bearer $newAccessToken';
              final clonedRequest = await _dio!.fetch(error.requestOptions);
              return handler.resolve(clonedRequest);
            } catch (e) {
              return handler.reject(error);
            }
          } else {
            return handler.reject(error);
          }
        }

        return handler.next(error);
      },
    ));

    _dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
    ));

    return _dio!;
  }

  static bool _requiresToken(String path) {
    final publicPaths = [
      '/auth/login/',
      '/auth/register/',
    ];
    return !publicPaths.contains(path);
  }

  static Future<void> updateToken(String newToken) async {
    await SharedPreference.setSecureString(Constants.userKey, newToken);
  }
}
