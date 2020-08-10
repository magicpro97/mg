import 'package:flutter/material.dart';
import 'package:mg/core/widgets/dialogs/platform_alert_dialog.dart';

class SimpleAlertDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final Widget negativeButton;
  final Widget positiveButton;

  const SimpleAlertDialog(
      {Key key,
      @required this.title,
      @required this.content,
      this.negativeButton,
      this.positiveButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [];
    if (negativeButton != null) actions.add(negativeButton);
    if (positiveButton != null) actions.add(positiveButton);

    return PlatformAlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }
}
