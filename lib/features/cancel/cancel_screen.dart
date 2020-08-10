import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/buttons/rounded_button.dart';
import '../../shared/widgets/text_fields/rounded_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';
import '../base_screen.dart';

class CancelScreen extends StatelessWidget {
  static const route = '/cancel';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: translate(I18n.TXT_CANCEL),
      child: Padding(
        padding: const EdgeInsets.all(Dimen.SPACE_X2),
        child: Column(
          children: <Widget>[
            SizedBox(height: Dimen.SPACE_X2),
            Image.asset(ImagePaths.IC_CANCEL),
            SizedBox(height: Dimen.SPACE_X1),
            Text(
              translate(I18n.TXT_CANCEL_TITLE),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: Dimen.SPACE_X1),
            Text(translate(I18n.TXT_CANCEL_INSTRUCTION)),
            SizedBox(height: Dimen.SPACE_X2),
            RoundedTextField(),
            SizedBox(height: Dimen.SPACE_X2),
            RoundedButton(
              label: translate(I18n.TXT_SUBMIT),
              backgroundColor: AppColor.TRANSPARENT,
              borderColor: AppColor.BLACK,
            )
          ],
        ),
      ),
    );
  }
}
