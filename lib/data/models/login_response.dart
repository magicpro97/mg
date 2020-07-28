import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/data/models/user.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'activated')
  final int isActivated;

  @JsonKey(name: 'verified')
  final bool isVerify;

  final User user;

  LoginResponse({this.accessToken, this.isActivated, this.isVerify, this.user});

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
