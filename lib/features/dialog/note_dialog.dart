import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/widgets/clickable_text.dart';
import '../../shared/widgets/rounded_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class NoteDialog extends StatelessWidget {
  final Function onDone;

  const NoteDialog({
    Key key,
    this.onDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: screenWidth,
      child: Column(
        children: <Widget>[
          SizedBox(height: Dimen.SPACE_X1),
          Text(
            translate(I18n.TXT_NOTE),
            style: textTheme.headline6,
          ),
          SizedBox(height: Dimen.SPACE_X1),
          RoundedTextField(),
          SizedBox(height: Dimen.SPACE_X1),
          Container(
            color: AppColor.PRIMARY,
            padding: const EdgeInsets.all(Dimen.SPACE_X1),
            child: ClickableText(
              text: translate(I18n.TXT_NOTE),
              onPress: onDone,
            ),
          )
        ],
      ),
    );
  }
}
