import 'package:flutter/material.dart';
import 'package:mg/core/widgets/dialogs/simple_alert_dialog.dart';
import 'package:mg/shared/widgets/buttons/dialog_button.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  final String content;
  final String negativeLabel;
  final String positiveLabel;
  final void Function() onNegativePressed;
  final void Function() onPositivePressed;

  const ErrorDialog({
    Key key,
    @required this.title,
    @required this.content,
    this.negativeLabel,
    this.positiveLabel,
    this.onNegativePressed,
    this.onPositivePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleAlertDialog(
      positiveButton: positiveLabel != null
          ? DialogButton(
              isNegative: false,
              label: positiveLabel,
              onPressed: onPositivePressed,
            )
          : null,
      content: Text(content),
      negativeButton: negativeLabel != null
          ? DialogButton(
              isNegative: true,
              label: negativeLabel,
              onPressed: onNegativePressed,
            )
          : null,
      title: Text(title),
    );
  }
}
