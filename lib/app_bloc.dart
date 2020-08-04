import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mg/core/bloc/cached_bloc.dart';
import 'package:mg/data/sources/cache/encrypted_storage.dart';

part 'app_bloc.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const AppState._();

  factory AppState.unAuthorized() = _UnAuthorized;

  factory AppState.authorized() = _Authorized;
}

class AppStorage {}

class AppBloc extends SimpleCachedBloc<AppState, AppStorage> {
  final EncryptedStorage _encryptedStorage;

  AppBloc(Box<String> cachedBox, this._encryptedStorage)
      : super(AppState.unAuthorized(), cachedBox);

  void isLogin() {
    final token = _encryptedStorage.getToken();

    if (token?.isNotEmpty ?? false) {
      unAuthorized();
    } else {
      authorized();
    }
  }

  void unAuthorized() => emit(AppState.unAuthorized());

  void authorized() => emit(AppState.authorized());
}
