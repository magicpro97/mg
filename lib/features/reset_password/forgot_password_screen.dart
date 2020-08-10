import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/buttons/rounded_button.dart';
import '../../shared/widgets/text_fields/underline_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';
import '../base_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const route = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: translate(I18n.TXT_FORGOT_PASSWORD),
      child: Padding(
        padding: const EdgeInsets.all(Dimen.SPACE_X2),
        child: Column(
          children: <Widget>[
            SizedBox(height: Dimen.SPACE_X2),
            Image.asset(ImagePaths.IC_RESET_PW),
            SizedBox(height: Dimen.SPACE_X2),
            Text(
              translate(I18n.TXT_RESET_PASSWORD).toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: Dimen.SPACE_X1),
            Text(translate(I18n.TXT_RESET_PASSWORD_INSTRUCTION)),
            SizedBox(height: Dimen.SPACE_X1),
            UnderlineTextField(
                hintText: translate(I18n.TXT_RESET_PASSWORD_HINT)),
            SizedBox(height: Dimen.SPACE_X3),
            RoundedButton(
              label: translate(I18n.TXT_SUBMIT),
              backgroundColor: AppColor.TRANSPARENT,
              borderColor: AppColor.BLACK,
            ),
          ],
        ),
      ),
    );
  }
}
