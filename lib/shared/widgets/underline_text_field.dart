import 'package:flutter/material.dart';

class UnderlineTextField extends StatelessWidget {
  final TextStyle contentTextStyle;
  final TextStyle hintTextStyle;
  final String hintText;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Color underlineColor;
  final Function(String) onTextChange;

  const UnderlineTextField({
    Key key,
    this.hintTextStyle,
    @required this.prefixIcon,
    this.keyboardType,
    @required this.hintText,
    this.obscureText = false,
    this.contentTextStyle,
    @required this.underlineColor,
    this.onTextChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: contentTextStyle,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        prefixIcon: prefixIcon,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: underlineColor),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: underlineColor),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onTextChange,
    );
  }
}