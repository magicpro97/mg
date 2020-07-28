import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/error/error_response.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<R> with _$Result {
  factory Result.error(ErrorResponse error) = _Error;

  factory Result.success(R result) = _Success;

  factory Result.unknown(Exception exception) = _Unknown;
}
