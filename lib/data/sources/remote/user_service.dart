import 'package:dio/dio.dart';
import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/models/response/response_parser.dart';
import 'package:mg/data/models/user.dart';
import 'package:mg/shared/config/api.dart';

abstract class UserService {
  Future<Result> login({String username, String password});

  Future<void> signOut();

  Future<User> fetchUser(String id);
}

class UserServiceImpl extends UserService {
  final Dio _dio;

  UserServiceImpl(this._dio);

  @override
  Future<User> fetchUser(String id) async {
    throw UnimplementedError();
  }

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
              (json) => LoginResponse.fromJson(json),
            ).data,
          )
          .catchError((error) => error);

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
