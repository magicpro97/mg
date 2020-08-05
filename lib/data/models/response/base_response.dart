import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/response/error_response.dart';

class BaseResponse<T> {
  final Result<T> data;

  BaseResponse(this.data);

  factory BaseResponse.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic> fromJson) fromJson) {
    try {
      final data = fromJson(json);

      return BaseResponse(Result.success(data));
    } on Exception {
      try {
        final error = ErrorResponse.fromJson(json);

        return BaseResponse(Result.error(error));
      } on Exception catch (exception) {
        return BaseResponse(Result.unknown(exception));
      }
    }
  }
}
