import 'package:flutter/material.dart';
import 'package:mg/style/dimen.dart';

class VIconButton extends StatelessWidget {
  final Icon icon;
  final Text text;
  final Function onPress;

  const VIconButton({
    Key key,
    @required this.icon,
    @required this.text,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onPress,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              icon,
              SizedBox(height: Dimen.SPACE_X1),
              text,
            ],
          ),
        ),
      ),
    );
  }
}
