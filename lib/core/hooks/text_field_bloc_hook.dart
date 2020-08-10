import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mg/core/bloc/text_field_bloc.dart';

const useTextFieldBloc = _TextFieldBlocCreator();

class _TextFieldBlocCreator {
  const _TextFieldBlocCreator();

  TextFieldBloc call(String Function(String) condition) =>
      use(_TextFieldBlocHook(condition));
}

class _TextFieldBlocHook extends Hook<TextFieldBloc> {
  final String Function(String) condition;

  _TextFieldBlocHook(this.condition);

  @override
  HookState<TextFieldBloc, Hook<TextFieldBloc>> createState() =>
      _TextFieldBlocHookState(condition);
}

class _TextFieldBlocHookState
    extends HookState<TextFieldBloc, _TextFieldBlocHook> {
  final String Function(String) condition;

  _TextFieldBlocHookState(this.condition);

  TextFieldBloc textFieldBloc;

  @override
  TextFieldBloc build(BuildContext context) {
    textFieldBloc = TextFieldBloc(condition);

    return textFieldBloc;
  }

  @override
  void dispose() {
    textFieldBloc.close();
    super.dispose();
  }
}
