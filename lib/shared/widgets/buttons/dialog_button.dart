import 'package:flutter/material.dart';
import 'package:mg/style/color.dart';

class DialogButton extends StatelessWidget {
  final bool isNegative;
  final void Function() onPressed;
  final String label;

  const DialogButton({
    Key key,
    @required this.isNegative,
    this.onPressed,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: isNegative ? AppColor.RED : AppColor.PRIMARY,
        ),
      ),
    );
  }
}
