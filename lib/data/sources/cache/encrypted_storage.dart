import 'package:hive/hive.dart';

class EncryptedStorage {
  final Box<String> _cachedBox;

  EncryptedStorage(this._cachedBox);

  Future<void> saveToken(String token) => _cachedBox.put(_Keys.TOKEN, token);

  String getToken() => _cachedBox.get(_Keys.TOKEN);
}

class _Keys {
  static const TOKEN = 'token';
}
