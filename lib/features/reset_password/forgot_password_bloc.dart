import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg/core/bloc/base_bloc.dart';
import 'package:mg/data/models/response/base_response.dart';
import 'package:mg/data/repositories/user_repository.dart';

part 'forgot_password_bloc.freezed.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();

  factory ForgotPasswordState.error({String message}) = _Error;

  factory ForgotPasswordState.success(String message) = _Success;

  const factory ForgotPasswordState.loading() = _Loading;

  const factory ForgotPasswordState.initial() = _Initial;
}

class ForgotPasswordBloc extends BaseBloc<ForgotPasswordState> {
  final UserRepository _userRepository;

  ForgotPasswordBloc(this._userRepository)
      : super(ForgotPasswordState.initial());

  void submit(String email) {
    emit(ForgotPasswordState.loading());

    _userRepository.forgotPassword(email).then((value) {
      if (value is BaseResponse) {
        if (value.code == 0) {
          emit(ForgotPasswordState.success(value.message));
        } else {
          emit(ForgotPasswordState.error(message: value.message));
        }
      } else {
        emit(ForgotPasswordState.error());
      }
    }).catchError((error) => emit(ForgotPasswordState.error()));
  }
}
