import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mg/core/bloc/base_bloc.dart';

part 'text_field_bloc.freezed.dart';

@freezed
abstract class TextFieldState with _$TextFieldState {
  const TextFieldState._();

  factory TextFieldState.normal(String value) = _Normal;

  factory TextFieldState.error(String error) = _Error;
}

class TextFieldBloc extends BaseBloc<TextFieldState> {
  final String initialValue;
  final String Function(String) condition;
  final Box<String> cachedBox;
  final String cachedKey;

  String value;

  TextFieldBloc(
    this.condition, {
    this.initialValue,
    this.cachedBox,
    this.cachedKey,
  }) : super(TextFieldState.normal(
            initialValue ?? cachedBox?.get(cachedKey ?? '') ?? ''));

  void onTextChange(String value) {
    this.value = value;

    cachedBox?.put(cachedKey, value);

    final error = condition(value);
    if (error == null) {
      emit(TextFieldState.normal(value));
    } else {
      emit(TextFieldState.error(error));
    }
  }

  @override
  Future<void> close() async {
    await cachedBox?.close();

    return super.close();
  }
}
