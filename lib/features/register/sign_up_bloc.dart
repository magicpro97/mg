import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/bloc/base_bloc.dart';
import 'package:mg/data/models/response/login_response.dart';
import 'package:mg/data/repositories/token_repository.dart';
import 'package:mg/data/repositories/user_repository.dart';

part 'sign_up_bloc.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.loading() = _Loading;

  factory SignUpState.success(String message) = _Success;

  factory SignUpState.error({String message}) = _Error;
}

class SignUpBloc extends BaseBloc<SignUpState> {
  final UserRepository _userRepository;
  final TokenRepository _tokenRepository;

  SignUpBloc(this._userRepository, this._tokenRepository)
      : super(SignUpState.initial());

  void register({
    String username,
    String password,
    String phone,
    String email,
  }) {
    emit(SignUpState.loading());

    _userRepository
        .register(
      username: username,
      phone: phone,
      password: password,
      email: email,
    )
        .then((value) async {
      if (value is LoginResponse) {
        if (value.code == 1) {
          emit(SignUpState.error(message: value.message));
        } else {
          await _tokenRepository.saveToken(value.accessToken);

          emit(SignUpState.success(value.message));
        }
      }
    }).catchError((error) => emit(SignUpState.error()));
  }
}
