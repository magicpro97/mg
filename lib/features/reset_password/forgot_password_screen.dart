import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/constants/image_paths.dart';
import 'package:mg/shared/widgets/base_screen.dart';
import 'package:mg/shared/widgets/rounded_button.dart';
import 'package:mg/shared/widgets/underline_text_field.dart';
import 'package:mg/style/color.dart';
import 'package:mg/style/dimen.dart';

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
