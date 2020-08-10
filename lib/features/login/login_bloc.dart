import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/bloc/base_bloc.dart';
import 'package:mg/data/models/response/error_response.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/repositories/token_repository.dart';
import 'package:mg/data/repositories/user_repository.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.initial() = _Initial;

  factory LoginState.success() = _Succes;

  factory LoginState.fail({String message}) = _Fail;

  const factory LoginState.loading() = _Loading;
}

class LoginBloc extends BaseBloc<LoginState> {
  final UserRepository _userRepository;
  final TokenRepository _tokenRepository;

  LoginBloc(
    this._userRepository,
    this._tokenRepository,
  ) : super(LoginState.initial());

  void login({String username, String password}) {
    emit(LoginState.loading());

    _userRepository
        .login(
          username: username,
          password: password,
        )
        .then(_loginSuccess)
        .catchError((error) {
      if (error is String) {
        emit(LoginState.fail(message: error));
      } else {
        emit(LoginState.fail());
      }
    });
  }

  void _loginSuccess(dynamic response) {
    if (response is LoginResponse) {
      _tokenRepository.saveToken(response.accessToken);

      emit(LoginState.success());
    }

    if (response is ErrorResponse) {
      emit(LoginState.fail(message: response.message));
    }
  }
}
