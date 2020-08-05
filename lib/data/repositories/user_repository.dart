import 'package:mg/core/repositories/base_repository.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/sources/remote/user_service.dart';


abstract class UserRepository extends BaseRepository<LoginResponse> {
  Future<LoginResponse> login({String username, String password});
}

class UserRepositoryImpl extends UserRepository {
  final UserService _userService;

  UserRepositoryImpl(this._userService);

  @override
  Future<LoginResponse> login({String username, String password}) async {
    final result = await _userService.login(
      username: username,
      password: password,
    );

    return result.maybeWhen(
      success: (result) => result,
      orElse: () {
        return null;
      },
    );
  }
}
