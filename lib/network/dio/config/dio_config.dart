import 'package:dio/dio.dart';

class DioConfig {
  static Dio createRequest() {
    var dio = Dio(BaseOptions(
      validateStatus: (int? statusCode) {
        if (statusCode != null) {
          if (statusCode >= 100 && statusCode <= 511) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      },
      receiveDataWhenStatusError: true,
    ));

    // TIME OUT CONFIGURATION
    dio.options.connectTimeout = Duration(milliseconds: 55 * 1000);
    dio.options.receiveTimeout = Duration(milliseconds: 55 * 1000);
    dio.options.sendTimeout = Duration(milliseconds: 55 * 1000);

    return dio;
  }
}
