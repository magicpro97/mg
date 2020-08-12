import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UnderlineTextField extends StatelessWidget {
  final Key key;
  final TextStyle contentTextStyle;
  final TextStyle hintTextStyle;
  final String hintText;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Color underlineColor;
  final Function(String) onTextChange;
  final Function(String) onFieldSubmitted;
  final String Function(String) validator;
  final TextEditingController controller;
  final String errorText;
  final String initialValue;
  final List<TextInputFormatter> inputFormatters;
  final TextInputAction textInputAction;

  const UnderlineTextField({
    this.key,
    this.hintTextStyle,
    this.prefixIcon,
    this.keyboardType,
    @required this.hintText,
    this.obscureText = false,
    this.contentTextStyle,
    this.underlineColor,
    this.onTextChange,
    this.validator,
    this.controller,
    this.errorText,
    this.initialValue,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      initialValue: initialValue,
      style: contentTextStyle,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle?.copyWith(color: underlineColor) ?? null,
        prefixIcon: prefixIcon,
        errorText: errorText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: underlineColor?.withOpacity(.5) ?? Colors.black),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: underlineColor?.withOpacity(.5) ?? Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: underlineColor ?? Colors.black),
        ),
        errorMaxLines: 2,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onTextChange,
      validator: validator,
      controller: controller,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
    );
  }
}
