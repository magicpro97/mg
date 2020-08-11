import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mg/core/hooks/text_field_bloc_hook.dart';
import 'package:mg/core/utils/text_field_bloc_validator.dart';
import 'package:mg/core/validator.dart';
import 'package:mg/features/base_screen.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/features/register/sign_up_bloc.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/constants/image_paths.dart';
import 'package:mg/shared/widgets/builders/underline_text_field_bloc_builder.dart';
import 'package:mg/shared/widgets/dialogs/common_error_dialog.dart';
import 'package:mg/shared/widgets/dialogs/common_succces_dialog.dart';
import 'package:mg/style/color.dart';
import 'package:mg/style/dimen.dart';

class SignUpScreen extends HookWidget {
  static const route = '/register';

  @override
  Widget build(BuildContext context) {
    String emptyCondition(String value) =>
        value.isEmpty ? translate(I18n.MSG_REQUIRED_ERROR) : null;

    String phoneCondition(String value) =>
        value.isPhone ? null : translate(I18n.MSG_INVALID_PHONE);

    String emailCondition(String value) =>
        value.isEmail ? null : translate(I18n.MSG_INVALID_EMAIL);

    String passwordCondition(String value) =>
        value.isPassword ? null : translate(I18n.MSG_PASSWORD_REQUIREMENT);

    final usernameBloc = useTextFieldBloc(emptyCondition);
    final phoneBloc = useTextFieldBloc(phoneCondition);
    final emailBloc = useTextFieldBloc(emailCondition);
    final passwordBloc = useTextFieldBloc(passwordCondition);
    final confirmPasswordBloc = useTextFieldBloc(
      (value) => value !=
              passwordBloc.state
                  .maybeWhen(orElse: () => null, normal: (value) => value)
          ? translate(I18n.MSG_PASSWORD_NOT_THE_SAME)
          : null,
    );

    return BlocListener<SignUpBloc, SignUpState>(
      cubit: context.bloc<SignUpBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          error: (error) => showDialog(
            context: context,
            child: CommonErrorDialog(
              message: error,
            ),
          ),
          success: (message) => showDialog(
            context: context,
            child: CommonSuccessDialog(
              message: message,
            ),
          ).then((value) => Navigator.pushNamed(context, HomeScreen.route)),
          orElse: () {},
        );
      },
      child: BlocBuilder<SignUpBloc, SignUpState>(
        cubit: context.bloc<SignUpBloc>(),
        builder: (context, state) => BaseScreen(
          isLoading: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          title: translate(I18n.TXT_REGISTER),
          leading: IconButton(
            icon: Icon(
              Icons.close,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.done,
              ),
              onPressed: () {
                final blocs = [
                  usernameBloc,
                  phoneBloc,
                  emailBloc,
                  passwordBloc,
                  confirmPasswordBloc,
                ];
                final isValid =
                    TextFieldBlocValidator.getValidValue(blocs).length ==
                        blocs.length;

                if (isValid) {
                  context.bloc<SignUpBloc>().register(
                        username: usernameBloc.value,
                        phone: phoneBloc.value,
                        email: emailBloc.value,
                        password: passwordBloc.value,
                      );
                }
              },
            ),
          ],
          child: SafeArea(
            bottom: false,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Dimen.SPACE_X2),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    UnderlineTextFieldBlocBuilder(
                      bloc: usernameBloc,
                      hint: translate(I18n.TXT_USER_NAME),
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColor.BLACK,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: Dimen.SPACE_X1),
                    UnderlineTextFieldBlocBuilder(
                      bloc: phoneBloc,
                      hint: translate(I18n.TXT_PHONE),
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: AppColor.BLACK,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '###-### ####',
                            filter: {"#": RegExp(r'[0-9]')}),
                      ],
                    ),
                    const SizedBox(height: Dimen.SPACE_X1),
                    UnderlineTextFieldBlocBuilder(
                      bloc: emailBloc,
                      hint: translate(I18n.TXT_EMAIL_ADDRESS),
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColor.BLACK,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: Dimen.SPACE_X1),
                    UnderlineTextFieldBlocBuilder(
                      bloc: passwordBloc,
                      hint: translate(I18n.TXT_PASSWORD),
                      prefixIcon: Image.asset(ImagePaths.IC_PW_BLACK),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: Dimen.SPACE_X1),
                    UnderlineTextFieldBlocBuilder(
                      bloc: confirmPasswordBloc,
                      hint: translate(I18n.TXT_CONFIRM_PASSWORD),
                      prefixIcon: Image.asset(ImagePaths.IC_RE_PW),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: Dimen.SPACE_X1),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
