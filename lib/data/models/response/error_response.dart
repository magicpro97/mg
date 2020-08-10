import 'package:mg/data/models/response/base_response.dart';

class ErrorResponse extends BaseResponse {
  final dynamic data;

  ErrorResponse({
    int code,
    String message,
    this.data,
  }) : super(
          code: code,
          message: message,
        );

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
