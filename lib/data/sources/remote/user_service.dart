import 'package:dio/dio.dart';
import 'package:mg/core/models/base_response.dart';
import 'package:mg/core/models/result.dart';
import 'package:mg/data/models/login_response.dart';
import 'package:mg/data/models/user.dart';

abstract class UserService {
  Future<Result<LoginResponse>> login(String username, String password);

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
  Future<Result<LoginResponse>> login(String username, String password) async {
    final res = await _dio.get('');

    return BaseResponse((json) => LoginResponse.fromJson(json),
            data: res.data, statusCode: res.statusCode)
        .getResult();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
