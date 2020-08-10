import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/response/error_response.dart';

class ResponseParser<T> {
  final Result<dynamic> data;

  ResponseParser(this.data);

  factory ResponseParser.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic> fromJson) fromJson) {
    try {
      final code = json['code'] as int;

      switch (code) {
        case 0:
          final data = fromJson(json);

          return ResponseParser(Result.success(data));
          break;
        case 1:
          final error = ErrorResponse.fromJson(json);

          return ResponseParser(Result.error(error));
          break;
        default:
          return ResponseParser(Result.unknown(null));
      }
    } on Exception catch (exception) {
      return ResponseParser(Result.unknown(exception));
    }
  }
}
