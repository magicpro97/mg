import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EncryptedStorage {
  final Box<String> _cachedBox;

  EncryptedStorage(@Named('CachedBox') this._cachedBox);

  Future<void> saveToken(String token) => _cachedBox.put(_Keys.TOKEN, token);

  String getToken() => _cachedBox.get(_Keys.TOKEN);
}

class _Keys {
  static const TOKEN = 'token';
}
