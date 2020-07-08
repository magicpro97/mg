import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/underline_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class SignUpScreen extends StatelessWidget {
  static const route = '/register';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.PRIMARY,
      child: Scaffold(
        backgroundColor: AppColor.PRIMARY,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.close,
                        color: AppColor.BLACK,
                      ),
                      onPressed: () {}),
                  Text(
                    translate(I18n.TXT_REGISTER),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.check,
                        color: AppColor.BLACK,
                      ),
                      onPressed: () {}),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimen.SPACE_X2),
                child: _registerForm(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimen.SPACE_X1,
            vertical: Dimen.SPACE_X2,
          ),
          child: Text(
            translate(I18n.TXT_REQUIRED_INFORMATION).toUpperCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        _TextField(
          hintText: translate(I18n.TXT_USER_NAME),
          prefixIcon: Icon(
            Icons.person,
            color: AppColor.BLACK,
          ),
        ),
        _TextField(
          hintText: translate(I18n.TXT_PHONE),
          prefixIcon: Icon(
            Icons.phone_android,
            color: AppColor.BLACK,
          ),
        ),
        _TextField(
          hintText: translate(I18n.TXT_EMAIL_ADDRESS),
          prefixIcon: Icon(
            Icons.email,
            color: AppColor.BLACK,
          ),
        ),
        _TextField(
          hintText: translate(I18n.TXT_PASSWORD),
          prefixIcon: Image.asset(ImagePaths.IC_PW_BLACK),
          isPassword: true,
        ),
        _TextField(
          hintText: translate(I18n.TXT_CONFIRM_PASSWORD),
          prefixIcon: Image.asset(ImagePaths.IC_RE_PW),
          isPassword: true,
        ),
      ],
    );
  }
}

class _TextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;

  const _TextField({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimen.SPACE_X1),
      child: UnderlineTextField(
        hintText: hintText,
        prefixIcon: prefixIcon,
        obscureText: isPassword,
        underlineColor: AppColor.BLACK,
      ),
    );
  }
}
