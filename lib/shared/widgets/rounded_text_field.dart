import 'package:flutter/material.dart';
import 'package:mg/style/color.dart';

class RoundedTextField extends StatelessWidget {
  final Function(String) onChange;

  const RoundedTextField({Key key, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.GRAY_F9F9F9,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        maxLines: 4,
        minLines: 4,
        onChanged: onChange,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
