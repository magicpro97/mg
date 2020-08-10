import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mg/core/bloc/cached_bloc.dart';
import 'package:mg/data/repositories/token_repository.dart';

part 'app_bloc.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const AppState._();

  factory AppState.unAuthorized() = _UnAuthorized;

  factory AppState.authorized() = _Authorized;

  const factory AppState.loading() = _Loading;
}

class AppStorage {}

class AppBloc extends SimpleCachedBloc<AppState, AppStorage> {
  final TokenRepository _tokenRepository;

  AppBloc(Box<String> cachedBox, this._tokenRepository)
      : super(AppState.unAuthorized(), cachedBox);

  void checkAuthorization() {
    loading();

    final token = _tokenRepository.getToken();

    if (token?.isEmpty ?? true) {
      unAuthorized();
    } else {
      authorized();
    }
  }

  void loading() => emit(AppState.loading());

  void unAuthorized() => emit(AppState.unAuthorized());

  void authorized() => emit(AppState.authorized());
}
