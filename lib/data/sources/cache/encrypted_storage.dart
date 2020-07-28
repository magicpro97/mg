import 'package:hive/hive.dart';

class EncryptedStorage {
  final Box _cachedBox;

  EncryptedStorage(this._cachedBox);

  Future<void> saveToken(String token) => _cachedBox.put(_Keys.TOKEN, token);

  Future<String> getToken() async =>
      (await _cachedBox.get(_Keys.TOKEN)) as String;
}

class _Keys {
  static const TOKEN = 'token';
}
