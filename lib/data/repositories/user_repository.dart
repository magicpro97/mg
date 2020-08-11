import 'package:mg/core/repositories/base_repository.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/sources/remote/user_service.dart';

abstract class UserRepository extends BaseRepository<LoginResponse> {
  Future login({String username, String password});

  Future forgotPassword(String email);

  Future register(
      {String username, String password, String phone, String email});
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
      .catchError((error) => error);

  @override
  Future forgotPassword(String email) => _userService
      .forgotPassword(email)
      .then((value) => value.maybeWhen(
            orElse: () => null,
            error: (error) => error,
            success: (result) => result,
          ))
      .catchError((error) => error);

  @override
  Future register(
          {String username, String password, String phone, String email}) =>
      _userService
          .register(
            username: username,
            password: password,
            phone: phone,
            email: email,
          )
          .then((value) => value.maybeWhen(
                orElse: () => null,
                error: (error) => error,
                success: (result) => result,
              ))
          .catchError((error) => error);
}
