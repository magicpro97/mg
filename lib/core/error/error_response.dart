class ErrorResponse {
  final String code;
  final String message;
  final dynamic data;

  ErrorResponse({this.code, this.message, this.data});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      code: json['code'],
      message: json['message'],
      data: json['data'],
    );
  }
}
