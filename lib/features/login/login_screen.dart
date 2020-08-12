import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/core/hooks/text_field_bloc_hook.dart';
import 'package:mg/core/utils/text_field_bloc_validator.dart';
import 'package:mg/features/base_screen.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/features/register/sign_up_screen.dart';
import 'package:mg/features/reset_password/forgot_password_screen.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/constants/image_paths.dart';
import 'package:mg/shared/widgets/builders/underline_text_field_bloc_builder.dart';
import 'package:mg/shared/widgets/buttons/rounded_button.dart';
import 'package:mg/shared/widgets/clickable_image.dart';
import 'package:mg/shared/widgets/clickable_text.dart';
import 'package:mg/shared/widgets/dialogs/common_error_dialog.dart';
import 'package:mg/style/color.dart';
import 'package:mg/style/dimen.dart';
import 'package:url_launcher/url_launcher.dart';

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

    final emailBloc = useTextFieldBloc(
      (value) => value.isEmpty ? translate(I18n.MSG_REQUIRED_ERROR) : null,
    );
    final passwordBloc = useTextFieldBloc(
      (value) => value.isEmpty ? translate(I18n.MSG_REQUIRED_ERROR) : null,
    );

    void _submit() {
      final isValid =
          TextFieldBlocValidator.validate([emailBloc, passwordBloc]);

      if (isValid) {
        loginBloc.login(
          username: emailBloc.value,
          password: passwordBloc.value,
        );
      }
    }

    return BlocListener<LoginBloc, LoginState>(
      cubit: loginBloc,
      listener: (context, state) {
        state.maybeWhen(
            success: () {
              appBloc.authorized();

              Navigator.pushReplacementNamed(context, HomeScreen.route);
            },
            fail: (message) => showDialog(
                  context: context,
                  child: CommonErrorDialog(
                    message: message,
                  ),
                ),
            loading: () => appBloc.loading(),
            orElse: () => appBloc.unAuthorized());
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        cubit: context.bloc<LoginBloc>(),
        builder: (_, state) => BaseScreen(
          showAppbar: false,
          isLoading: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          child: Container(
            color: AppColor.PRIMARY,
            padding: const EdgeInsets.symmetric(horizontal: Dimen.SPACE_X2),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: Dimen.SPACE_X3),
                      Image.asset(
                        ImagePaths.LOGO,
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: Dimen.SPACE_X3),
                      UnderlineTextFieldBlocBuilder(
                        bloc: emailBloc,
                        hint: translate(I18n.TXT_EMAIL_ADDRESS),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.email,
                          color: AppColor.WHITE,
                        ),
                        underlineColor: AppColor.WHITE,
                        contentTextStyle: TextStyle(color: AppColor.WHITE),
                      ),
                      SizedBox(height: Dimen.SPACE_X1),
                      UnderlineTextFieldBlocBuilder(
                        bloc: passwordBloc,
                        hint: translate(I18n.TXT_PASSWORD),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        prefixIcon: Icon(
                          Icons.fingerprint,
                          color: AppColor.WHITE,
                        ),
                        underlineColor: AppColor.WHITE,
                        onFieldSubmitted: (_) => _submit(),
                        contentTextStyle: TextStyle(color: AppColor.WHITE),
                      ),
                      SizedBox(height: Dimen.SPACE_X3),
                      RoundedButton(
                        label: translate(I18n.TXT_LOG_IN),
                        backgroundColor: AppColor.TRANSPARENT,
                        borderColor: AppColor.WHITE,
                        labelColor: AppColor.WHITE,
                        onPress: _submit,
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
                              onPress: () => Navigator.pushNamed(
                                  context, ForgotPasswordScreen.route),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 80),
                            child: ClickableText(
                              text: translate(I18n.TXT_SIGN_UP),
                              color: AppColor.WHITE,
                              onPress: () => Navigator.pushNamed(
                                  context, SignUpScreen.route),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      ClickableImage(
                        image: Image.asset(ImagePaths.IC_SOS_CALL),
                        onPress: () async {
                          const tel = 'tel:1800888811';
                          if (await canLaunch(tel)) {
                            launch(tel);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
