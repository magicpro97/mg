import 'dart:math';

import 'package:mg/core/repositories/base_repository.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/sources/remote/user_service.dart';

abstract class UserRepository extends BaseRepository<LoginResponse> {
  Future login({String username, String password});
}

class UserRepositoryImpl extends UserRepository {
  final UserService _userService;

  UserRepositoryImpl(this._userService);

  @override
  Future login({String username, String password}) => _userService
          .login(
            username: username,
            password: password,
          )
          .then((value) => value.maybeWhen(
                success: (result) => result,
                error: (error) => error,
                orElse: () => null,
              ))
          .catchError((error) {
        log(error);
        return error;
      });
}
