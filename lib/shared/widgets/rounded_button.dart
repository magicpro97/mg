import 'package:flutter/material.dart';

import '../../style/dimen.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final Function onPress;

  const RoundedButton({
    Key key,
    @required this.label,
    @required this.backgroundColor,
    @required this.borderColor,
    this.onPress,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: Dimen.BUTTON_HEIGHT,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(Dimen.BUTTON_BORDER_RADIUS),
              border: Border.all(color: borderColor)),
          child: Text(
            this.label.toUpperCase(),
            style: TextStyle(color: labelColor),
          ),
        ),
      ),
    );
  }
}
