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

    // Clear existing interceptors
    _dio!.interceptors.clear();

    // Add authentication interceptor
    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        if (_requiresToken(options.path)) {
          final token = await SharedPreference.getSecureString(Constants.userTokenKey);
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        // Handle 401 unauthorized errors (token expired)
        if (error.response?.statusCode == 401) {
          final refreshToken = await SharedPreference.getSecureString(Constants.refreshTokenKey);

          if (refreshToken != null) {
            try {
              // Attempt to refresh the token using the refresh_token
              final response = await _dio!.post(
                '${ApiConstants.apiBaseUrl}api/token/refresh/', // Replace with your API URL
                data: {
                  'refresh': refreshToken,
                },
              );

              final newAccessToken = response.data['access'];

              // Save the new access token
          await SharedPreference.setSecureString(Constants.userTokenKey, newAccessToken);

              // Retry the failed request with the new token
              error.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
              final clonedRequest = await _dio!.fetch(error.requestOptions);
              return handler.resolve(clonedRequest);

            } catch (e) {
              print('Token refresh failed: $e');
              return handler.reject(error);
            }
          } else {
            // await _logoutUser(); // Logout if no refresh token exists
            return handler.reject(error);
          }
        }

        return handler.next(error);
      },
    ));

    // Add logger interceptor
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

  // static Future<void> _logoutUser() async {
  //   await SharedPreference.removeSecureString(Constants.userTokenKey);
  //   await SharedPreference.removeSecureString(Constants.refreshTokenKey);
  //   // Navigate to login screen
  //   // Example: navigatorKey.currentState?.pushReplacementNamed('/login');
  // }

  static Future<void> updateToken(String newToken) async {
    await SharedPreference.setSecureString(Constants.userTokenKey, newToken);
  }
}


// import 'package:dio/dio.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:think_spark/core/common/local/shared_preferences.dart';
// import 'package:think_spark/core/constants/constants.dart';

// class DioFactory {
//   DioFactory._();

//   static Dio? dio;

//   static Dio getDio() {
//     Duration timeOut = const Duration(seconds: 30);

//     if (dio == null) {
//       dio = Dio();
//       dio!
//         ..options.connectTimeout = timeOut
//         ..options.receiveTimeout = timeOut
//         ..options.headers = {
//           'Accept': 'application/json',
//           'Content-Type': 'application/json',
//         };
//       addDioInterceptor();
//       return dio!;
//     } else {
//       return dio!;
//     }
//   }

//   static void addDioInterceptor() {
//     dio?.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         if (_requiresToken(options.path)) {
//           final token =
//               await SharedPreference.getSecureString(Constants.userTokenKey);
//           if (token != null && token.isNotEmpty) {
//             options.headers['Authorization'] = 'Bearer $token';
//           }
//         }
//         return handler.next(options);
//       },
//     ));

//     dio?.interceptors.add(PrettyDioLogger(
//       requestBody: true,
//       requestHeader: true,
//       responseHeader: true,
//     ));
//   }

//   static bool _requiresToken(String path) {
//     final publicPaths = [
//       '/auth/login/',
//       '/auth/register/',
//     ];

//     return !publicPaths.any((publicPath) => path.contains(publicPath));
//   }
// }
