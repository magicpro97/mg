import 'dart:convert';

import 'package:mg/core/error/error_response.dart';

import 'result.dart';

class BaseResponse<T> {
  final int statusCode;
  final dynamic data;
  final T Function(Map<String, dynamic>) fromJson;

  BaseResponse(this.fromJson, {this.data, this.statusCode = 200});

  Result<T> getResult() {
    final decodedData = jsonDecode(data);

    try {
      final object = fromJson(decodedData);

      return Result.success(object);
    } on Exception {
      try {
        final error = ErrorResponse.fromJson(decodedData);

        return Result.error(error);
      } on Exception catch (e) {
        return Result.unknown(e);
      }
    }
  }
}
