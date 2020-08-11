import 'package:flutter/material.dart';
import 'package:flutter_translate/global.dart';
import 'package:mg/i18n/i18n.dart';

import 'two_option_dialog.dart';

class CommonErrorDialog extends StatelessWidget {
  final String message;

  const CommonErrorDialog({
    Key key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoOptionDialog(
      title: translate(I18n.TXT_ERROR),
      content: message ?? translate(I18n.MSG_SERVER_ERROR),
      negativeLabel: translate(I18n.TXT_CLOSE),
      onNegativePressed: () => Navigator.pop(context),
    );
  }
}
