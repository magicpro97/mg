import 'package:dio/dio.dart';
import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/models/response/response_parser.dart';
import 'package:mg/shared/config/api.dart';

abstract class UserService {
  Future<Result> login({String username, String password});

  Future<Result> forgotPassword(String email);
}

class UserServiceImpl extends UserService {
  final Dio _dio;

  UserServiceImpl(this._dio);

  @override
  Future<Result> login({
    String username,
    String password,
  }) =>
      _dio
          .post(
            Api.SYSTEM_LOGIN,
            data: {
              'userLogin': username,
              'password': password,
            },
          )
          .then(
            (value) => ResponseParser.fromJson(
              value.data,
              fromJson: (json) => LoginResponse.fromJson(json),
            ).data,
          )
          .catchError((error) => error);

  @override
  Future<Result> forgotPassword(String email) => _dio
      .post(
        Api.FORGOT_PASSWORD,
        data: {
          'email': email,
        },
      )
      .then((value) => ResponseParser.fromJson(
            value.data,
          ).data)
      .catchError((error) => error);
}
