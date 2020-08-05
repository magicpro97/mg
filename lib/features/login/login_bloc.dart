import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/bloc/base_bloc.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/repositories/token_repository.dart';
import 'package:mg/data/repositories/user_repository.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.initial() = _Initial;

  factory LoginState.success() = _Succes;

  factory LoginState.fail() = _Fail;
}

class LoginBloc extends BaseBloc<LoginState> {
  final UserRepository _userRepository;
  final TokenRepository _tokenRepository;

  LoginBloc(
    this._userRepository,
    this._tokenRepository,
  ) : super(LoginState.initial());

  void login({String username, String password}) => _userRepository
      .login(username: username, password: password)
      .then(_loginSuccess)
      .catchError((error) => emit(LoginState.fail()));

  void _loginSuccess(LoginResponse loginResponse) {
    _tokenRepository.saveToken(loginResponse.accessToken);

    emit(LoginState.success());
  }
}
