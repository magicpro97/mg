import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/sources/cache/encrypted_storage.dart';
import 'package:mg/data/sources/remote/user_service.dart';

import '../../core/repositories/base_repository.dart';
import '../models/user.dart';

abstract class UserRepository extends BaseRepository<User> {
  Future<User> login({String username, String password});
}

class UserRepositoryImpl extends UserRepository {
  final UserService _userService;
  final EncryptedStorage _encryptedStorage;

  UserRepositoryImpl(this._userService, this._encryptedStorage);

  @override
  Future<User> login({String username, String password}) async {
    final result = await _userService.login(
      username: username,
      password: password,
    );

    return result.maybeWhen(
      success: (result) async {
        if (result is LoginResponse) {
          await _encryptedStorage.saveToken(result.accessToken);

          return result.user;
        }
        return null;
      },
      orElse: () {
        return null;
      },
    );
  }
}
