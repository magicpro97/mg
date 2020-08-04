import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/response/base_response.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/models/user.dart';

abstract class UserService {
  Future<Result<LoginResponse>> login({String username, String password});

  Future<void> signOut();

  Future<User> fetchUser(String id);
}

@LazySingleton(as: UserService)
class UserServiceImpl extends UserService {
  final Dio _dio;

  UserServiceImpl(this._dio);

  @override
  Future<User> fetchUser(String id) async {
    // TODO: implement fetchUser
    throw UnimplementedError();
  }

  @override
  Future<Result<LoginResponse>> login({
    String username,
    String password,
  }) =>
      _dio
          .get('')
          .then((value) => BaseResponse.fromJson(
        value.data,
            (json) => LoginResponse.fromJson(json),
      ).data)
          .catchError((error) => Result.error(error));

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
