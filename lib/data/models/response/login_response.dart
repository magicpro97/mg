import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/mapper/boolean_mapper.dart';
import 'package:mg/data/models/response/base_response.dart';
import 'package:mg/data/models/user.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'activated', fromJson: toBool)
  final bool isActivated;

  @JsonKey(name: 'verified', fromJson: toBool)
  final bool isVerify;

  final User user;

  LoginResponse({
    this.accessToken,
    this.isActivated,
    this.isVerify,
    this.user,
    int code,
    String message,
  }) : super(
          code: code,
          message: message,
        );

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  List<Object> get props => [accessToken];
}
