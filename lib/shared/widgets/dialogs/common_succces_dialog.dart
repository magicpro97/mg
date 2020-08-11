import 'package:flutter/widgets.dart';
import 'package:flutter_translate/global.dart';
import 'package:mg/i18n/i18n.dart';

import 'two_option_dialog.dart';

class CommonSuccessDialog extends StatelessWidget {
  final String message;

  const CommonSuccessDialog({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoOptionDialog(
      title: translate(I18n.TXT_SUCCESS),
      content: message,
      positiveLabel: translate(I18n.TXT_OK),
      onPositivePressed: () => Navigator.pop(context),
    );
  }
}
