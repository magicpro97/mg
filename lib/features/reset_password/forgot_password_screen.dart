import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mg/core/hooks/text_field_bloc_hook.dart';
import 'package:mg/core/utils/text_field_bloc_validator.dart';
import 'package:mg/features/base_screen.dart';
import 'package:mg/features/reset_password/forgot_password_bloc.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/constants/image_paths.dart';
import 'package:mg/shared/widgets/builders/underline_text_field_bloc_builder.dart';
import 'package:mg/shared/widgets/buttons/rounded_button.dart';
import 'package:mg/shared/widgets/dialogs/common_error_dialog.dart';
import 'package:mg/shared/widgets/dialogs/common_succces_dialog.dart';
import 'package:mg/style/color.dart';
import 'package:mg/style/dimen.dart';

class ForgotPasswordScreen extends HookWidget {
  static const route = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    final emailBloc = useTextFieldBloc(
      (value) => value.isEmpty ? translate(I18n.MSG_REQUIRED_ERROR) : null,
    );

    void _submit() {
      final isValid = TextFieldBlocValidator.validate([emailBloc]);

      if (isValid) {
        context.bloc<ForgotPasswordBloc>().submit(emailBloc.value);
      }
    }

    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      cubit: context.bloc<ForgotPasswordBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            showDialog(
              context: context,
              child: CommonErrorDialog(
                message: message,
              ),
            );
          },
          success: (message) {
            showDialog(
                context: context,
                child: CommonSuccessDialog(
                  message: message,
                ));
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        cubit: context.bloc<ForgotPasswordBloc>(),
        builder: (context, state) => BaseScreen(
          isLoading: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
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
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline6,
                ),
                SizedBox(height: Dimen.SPACE_X1),
                Text(translate(I18n.TXT_RESET_PASSWORD_INSTRUCTION)),
                SizedBox(height: Dimen.SPACE_X1),
                UnderlineTextFieldBlocBuilder(
                  bloc: emailBloc,
                  hint: translate(I18n.TXT_RESET_PASSWORD_HINT),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) => _submit(),
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: Dimen.SPACE_X3),
                RoundedButton(
                  label: translate(I18n.TXT_SUBMIT),
                  backgroundColor: AppColor.TRANSPARENT,
                  borderColor: AppColor.BLACK,
                  onPress: _submit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
