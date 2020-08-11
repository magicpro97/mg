import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mg/core/bloc/text_field_bloc.dart';
import 'package:mg/shared/widgets/text_fields/underline_text_field.dart';

class UnderlineTextFieldBlocBuilder extends StatelessWidget {
  final String hint;
  final TextFieldBloc bloc;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Color underlineColor;
  final List<TextInputFormatter> inputFormatters;

  const UnderlineTextFieldBlocBuilder({
    Key key,
    @required this.bloc,
    @required this.hint,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.underlineColor,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      cubit: bloc,
      builder: (context, state) => UnderlineTextField(
        hintText: hint,
        prefixIcon: prefixIcon,
        keyboardType: keyboardType,
        obscureText: obscureText,
        underlineColor: underlineColor,
        onTextChange: bloc.onTextChange,
        errorText: state.when(
          normal: (value) => null,
          error: (error) => error,
        ),
        inputFormatters: inputFormatters,
      ),
    );
  }
}
