import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/models/base_model.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse extends BaseModel {
  final int code;

  final String message;

  BaseResponse({this.code, this.message});

  @override
  List<Object> get props => [code, message];

  @override
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
