import 'package:mg/data/models/response/base_response.dart';

class ErrorResponse extends BaseResponse {
  final int code;
  final String message;
  final dynamic data;

  ErrorResponse({this.code, this.message, this.data});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'],
    );
  }

  @override
  List<Object> get props => [data];

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
