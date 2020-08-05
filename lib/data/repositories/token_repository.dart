import 'package:mg/data/sources/cache/encrypted_storage.dart';

abstract class TokenRepository {
  String getToken();

  Future<void> saveToken(String token);
}

class TokenRepositoryImpl extends TokenRepository {
  final EncryptedStorage _encryptedStorage;

  TokenRepositoryImpl(this._encryptedStorage);

  @override
  String getToken() => _encryptedStorage.getToken();

  @override
  Future<void> saveToken(String token) => _encryptedStorage.saveToken(token);
}
