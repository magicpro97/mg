import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/clickable_image.dart';
import '../../shared/widgets/clickable_text.dart';
import '../../shared/widgets/rounded_button.dart';
import '../../shared/widgets/underline_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class LoginScreen extends HookWidget {
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (Platform.isIOS) {
        FlutterStatusbarTextColor.setTextColor(FlutterStatusbarTextColor.light);
      }

      return null;
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePaths.LOGIN_BG),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: Dimen.LARGE_SPACE),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: Dimen.LARGER_SPACE),
              Image.asset(
                ImagePaths.LOGO,
                width: 150,
                height: 150,
              ),
              SizedBox(height: Dimen.LARGER_SPACE),
              _TextField(
                  hintText: translate(I18n.TXT_USER_NAME),
                  prefixIcon: Image.asset(ImagePaths.IC_EMAIL_WHITE),
                  keyboardType: TextInputType.emailAddress),
              SizedBox(height: Dimen.NORMAL_SPACE),
              _TextField(
                hintText: translate(I18n.TXT_PASSWORD),
                prefixIcon: Image.asset(ImagePaths.IC_PW),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(height: Dimen.LARGER_SPACE),
              RoundedButton(
                label: translate(I18n.TXT_LOG_IN),
                backgroundColor: AppColor.TRANSPARENT,
                borderColor: AppColor.WHITE,
                labelColor: AppColor.WHITE,
                onPress: () {},
              ),
              SizedBox(height: Dimen.LARGER_SPACE),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.white,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 150),
                    child: ClickableText(
                      text: translate(I18n.TXT_FORGOT_PASSWORD),
                      color: AppColor.WHITE,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: ClickableText(
                      text: translate(I18n.TXT_SIGN_UP),
                      color: AppColor.WHITE,
                    ),
                  ),
                ],
              ),
              Spacer(),
              ClickableImage(image: Image.asset(ImagePaths.IC_CALL)),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  const _TextField({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    @required this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnderlineTextField(
      contentTextStyle: TextStyle(color: AppColor.WHITE),
      hintText: hintText,
      hintTextStyle: TextStyle(color: AppColor.WHITE),
      keyboardType: keyboardType,
      obscureText: obscureText,
      underlineColor: AppColor.WHITE,
      prefixIcon: prefixIcon,
    );
  }
}
