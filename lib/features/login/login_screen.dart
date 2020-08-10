import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/core/bloc/text_field_bloc.dart';
import 'package:mg/core/hooks/text_field_bloc_hook.dart';
import 'package:mg/features/base_screen.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/constants/image_paths.dart';
import 'package:mg/shared/widgets/buttons/rounded_button.dart';
import 'package:mg/shared/widgets/clickable_image.dart';
import 'package:mg/shared/widgets/clickable_text.dart';
import 'package:mg/shared/widgets/dialogs/error_dialog.dart';
import 'package:mg/shared/widgets/text_fields/underline_text_field.dart';
import 'package:mg/style/color.dart';
import 'package:mg/style/dimen.dart';

import 'login_bloc.dart';

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

    final loginBloc = context.bloc<LoginBloc>();
    final appBloc = context.bloc<AppBloc>();

    final usernameBloc = useTextFieldBloc(
      (value) => value.isEmpty ? 'Required field' : null,
    );
    final passwordBloc = useTextFieldBloc(
      (value) => value.isEmpty ? 'Required field' : null,
    );

    return BlocListener<LoginBloc, LoginState>(
      cubit: loginBloc,
      listener: (context, state) {
        state.maybeWhen(
            success: () {
              EasyLoading.dismiss();

              Navigator.pushReplacementNamed(context, HomeScreen.route);
            },
            fail: (message) {
              EasyLoading.dismiss();

              showDialog(
                  context: context,
                  child: ErrorDialog(
                    title: 'Error',
                    content: message ??
                        'Cannot connect to server. Please try again.',
                    negativeLabel: 'Close',
                    onNegativePressed: () => Navigator.pop(context),
                  ));
            },
            loading: () {
              EasyLoading.show();
              appBloc.loading();
            },
            orElse: () => appBloc.unAuthorized());
      },
      child: BaseScreen(
        showAppbar: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagePaths.LOGIN_BG),
              fit: BoxFit.fill,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: Dimen.SPACE_X2),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: Dimen.SPACE_X3),
                Image.asset(
                  ImagePaths.LOGO,
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: Dimen.SPACE_X3),
                BlocBuilder<TextFieldBloc, TextFieldState>(
                  cubit: usernameBloc,
                  builder: (_, state) => _TextField(
                    initialValue: state.maybeWhen(
                      orElse: () => '',
                      normal: (value) => value,
                    ),
                    hintText: translate(I18n.TXT_USER_NAME),
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColor.WHITE,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    errorText: state.maybeWhen(
                      orElse: () => null,
                      error: (error) => error,
                    ),
                    onTextChange: (value) {
                      usernameBloc.onTextChange(value);
                    },
                  ),
                ),
                SizedBox(height: Dimen.SPACE_X1),
                BlocBuilder<TextFieldBloc, TextFieldState>(
                  cubit: passwordBloc,
                  builder: (_, state) => _TextField(
                    initialValue: state.maybeWhen(
                      orElse: () => '',
                      normal: (value) => value,
                    ),
                    hintText: translate(I18n.TXT_PASSWORD),
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: AppColor.WHITE,
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    errorText: state.maybeWhen(
                        orElse: () => null, error: (error) => error),
                    onTextChange: (value) {
                      passwordBloc.onTextChange(value);
                    },
                  ),
                ),
                SizedBox(height: Dimen.SPACE_X3),
                RoundedButton(
                  label: translate(I18n.TXT_LOG_IN),
                  backgroundColor: AppColor.TRANSPARENT,
                  borderColor: AppColor.WHITE,
                  labelColor: AppColor.WHITE,
                  onPress: () {
                    final username = usernameBloc.state.when(
                      normal: (value) => value,
                      error: (error) => null,
                    );

                    final password = passwordBloc.state.when(
                      normal: (value) => value,
                      error: (error) => null,
                    );

                    if (username != null && password != null) {
                      log(username);
                      log(password);
                      if (username.isEmpty || password.isEmpty) {
                        usernameBloc.onTextChange(username);
                        passwordBloc.onTextChange(password);
                      } else {
                        loginBloc.login(
                          username: username,
                          password: password,
                        );
                      }
                    }
                  },
                ),
                SizedBox(height: Dimen.SPACE_X3),
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
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String errorText;
  final Function(String) onTextChange;
  final TextEditingController controller;
  final String initialValue;

  const _TextField({
    Key key,
    @required this.hintText,
    @required this.prefixIcon,
    @required this.keyboardType,
    this.obscureText = false,
    this.errorText,
    @required this.onTextChange,
    this.controller,
    @required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnderlineTextField(
      key: key,
      contentTextStyle: TextStyle(color: AppColor.WHITE),
      hintText: hintText,
      hintTextStyle: TextStyle(color: AppColor.WHITE),
      keyboardType: keyboardType,
      obscureText: obscureText,
      underlineColor: AppColor.WHITE,
      prefixIcon: prefixIcon,
      errorText: errorText,
      onTextChange: onTextChange,
      controller: controller,
      initialValue: initialValue,
    );
  }
}
