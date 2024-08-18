import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

enum HttpMethod {
  get,
  post,
  patch,
  delete,
}

class BaseService {
  BaseOptions get _options {
    return BaseOptions(
      baseUrl: "https://66c035ccba6f27ca9a55fbda.mockapi.io",
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        HttpHeaders.acceptHeader: "application/json",
      },
    );
  }

  String _clearPath(String path) {
    if (!path.endsWith("/")) {
      return "$path/";
    }
    return path;
  }

  Future<Either<String, Map<String, dynamic>>> _handle({
    required HttpMethod method,
    required String path,
    Map<String, dynamic> data = const {},
  }) async {
    try {
      late Response<dynamic> response;

      switch (method) {
        case HttpMethod.get:
          response = await Dio(_options).get(
            _clearPath(path),
            queryParameters: data,
          );

        case HttpMethod.post:
          response = await Dio(_options).post(
            _clearPath(path),
            queryParameters: data,
          );

        case HttpMethod.patch:
          response = await Dio(_options).patch(
            _clearPath(path),
            queryParameters: data,
          );

        case HttpMethod.delete:
          response = await Dio(_options).delete(
            _clearPath(path),
            queryParameters: data,
          );
      }

      return right({'data': response.data});
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.get,
      path: path,
      data: data,
    );
  }

  Future<Either<String, Map<String, dynamic>>> post(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.post,
      path: path,
      data: data,
    );
  }

  Future<Either<String, Map<String, dynamic>>> patch(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.patch,
      path: path,
      data: data,
    );
  }

  Future<Either<String, Map<String, dynamic>>> delete(
    String path,
  ) {
    return _handle(
      method: HttpMethod.delete,
      path: path,
    );
  }
}
