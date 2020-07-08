import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/base_screen.dart';
import '../../shared/widgets/rounded_button.dart';
import '../../shared/widgets/underline_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const route = '/change_password';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: translate(I18n.TXT_CHANGE_PASSWORD),
      child: Padding(
        padding: const EdgeInsets.all(Dimen.SPACE_X2),
        child: Column(
          children: <Widget>[
            SizedBox(height: Dimen.SPACE_X2),
            Image.asset(ImagePaths.IC_CHANGE_PW),
            SizedBox(height: Dimen.SPACE_X2),
            Text(
              translate(I18n.TXT_CHANGE_PASSWORD).toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: Dimen.SPACE_X3),
            UnderlineTextField(
              hintText: translate(I18n.TXT_CURRENT_PASSWORD),
            ),
            SizedBox(height: Dimen.SPACE_X1),
            UnderlineTextField(
              hintText: translate(I18n.TXT_NEW_PASSWORD),
            ),
            SizedBox(height: Dimen.SPACE_X1),
            UnderlineTextField(
              hintText: translate(I18n.TXT_CONFIRM_PASSWORD),
            ),
            SizedBox(height: Dimen.SPACE_X3),
            RoundedButton(
              label: translate(I18n.TXT_SAVE),
              backgroundColor: AppColor.TRANSPARENT,
              borderColor: AppColor.BLACK,
            ),
          ],
        ),
      ),
    );
  }
}
