import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/data/models/response/error_response.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<R> with _$Result<R> {
  factory Result.error(ErrorResponse error) = _Error<R>;

  factory Result.success(R result) = _Success<R>;

  factory Result.unknown(Exception exception) = _Unknown<R>;
}
