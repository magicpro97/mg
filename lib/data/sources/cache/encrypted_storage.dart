import 'package:hive/hive.dart';

class EncryptedStorage {
  final Box<String> _cachedBox;

  EncryptedStorage(this._cachedBox);

  Future<void> saveToken(String token) => _cachedBox.put(_Keys.TOKEN, token);

  String getToken() => _cachedBox.get(_Keys.TOKEN);

  Future<void> save(String key, String value) => _cachedBox.put(key, value);

  String get(String key, {String defaultValue}) =>
      _cachedBox.get(key, defaultValue: defaultValue);
}

class _Keys {
  static const TOKEN = 'token';
}
