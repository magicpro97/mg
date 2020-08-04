import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/bloc/base_bloc.dart';
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

  LoginBloc(this._userRepository) : super(LoginState.initial());

  void login({String username, String password}) => _userRepository
      .login(username: username, password: password)
      .then((user) => emit(LoginState.success()))
      .catchError((error) => emit(LoginState.fail()));
}
