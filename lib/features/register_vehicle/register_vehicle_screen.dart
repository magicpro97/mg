import 'package:flutter/material.dart';
import 'package:flutter_translate/global.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/buttons/rounded_button.dart';
import '../../shared/widgets/clickable_text.dart';
import '../../shared/widgets/text_fields/underline_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';
import '../base_screen.dart';

class RegisterVehicleScreen extends StatelessWidget {
  static const route = '/register_vehicle';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: translate(I18n.TXT_REGISTER_INFORMATION),
      enableDrawer: true,
      actions: <Widget>[
        Center(
          child: ClickableText(
            text: translate(I18n.TXT_SKIP),
          ),
        ),
      ],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimen.SPACE_X2),
          child: Column(
            children: <Widget>[
              SizedBox(height: Dimen.SPACE_X2),
              Image.asset(ImagePaths.IC_VERIFICATION),
              SizedBox(height: Dimen.SPACE_X2),
              UnderlineTextField(
                prefixIcon: Icon(Icons.directions_car),
                hintText: translate(I18n.TXT_REG_NO),
              ),
              SizedBox(height: Dimen.SPACE_X1),
              UnderlineTextField(
                prefixIcon: Icon(Icons.payment),
                hintText: translate(I18n.TXT_POLICY_NO),
              ),
              SizedBox(height: Dimen.SPACE_X3),
              RoundedButton(
                label: translate(I18n.TXT_REGISTER),
                backgroundColor: AppColor.TRANSPARENT,
                borderColor: AppColor.BLACK,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
