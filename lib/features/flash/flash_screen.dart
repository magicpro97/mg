import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mg/features/reset_password/forgot_password_screen.dart';

import '../../shared/hooks/hook.dart';

class FlashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useAddFrameCallbackForFlashScreenHook(ForgotPasswordScreen.route);
    return Scaffold(
      body: Container(
        child: Center(child: Text('FlashScreen')),
      ),
    );
  }
}
