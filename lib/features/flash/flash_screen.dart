import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/features/login/login_screen.dart';
import 'package:mg/shared/hooks/hook.dart';

class FlashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useAddFrameCallbackForFlashScreenHook(() {
      context.bloc<AppBloc>().checkAuthorization();
    });

    return BlocListener<AppBloc, AppState>(
      cubit: context.bloc<AppBloc>(),
      listener: _appBlocListener,
      child: Scaffold(
        body: Container(
          child: Center(child: Text('FlashScreen')),
        ),
      ),
    );
  }

  void _appBlocListener(BuildContext context, AppState state) {
    state.when(
      unAuthorized: () => Navigator.pushNamed(context, LoginScreen.route),
      authorized: () => Navigator.pushNamed(context, HomeScreen.route),
    );
  }
}
