import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/change_password/change_password_screen.dart';
import 'features/home/bloc/home_bloc.dart';
import 'features/login/login_screen.dart';
import 'features/register/sign_up_screen.dart';
import 'features/register_vehicle/register_vehicle_screen.dart';
import 'features/reset_password/forgot_password_screen.dart';
import 'features/screen.dart';

var bootStage = 1;

RouteFactory routes() {
  return (RouteSettings settings) {
    Widget screen;
    bool fullScreen = false;

    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(pageBuilder: (_, __, ___) => FlashScreen());
    }

    // final arguments = settings.arguments as Map<String, dynamic> ?? {};
    switch (settings.name) {
      case LoginScreen.route:
        screen = LoginScreen();
        break;
      case HomeScreen.route:
        screen = BlocProvider(
          create: (BuildContext context) {
            return HomeBloc();
          },
          child: HomeScreen(),
        );
        break;
      case SignUpScreen.route:
        screen = SignUpScreen();
        break;
      case RegisterVehicleScreen.route:
        screen = RegisterVehicleScreen();
        break;
      case ChangePasswordScreen.route:
        screen = ChangePasswordScreen();
        break;
      case ForgotPasswordScreen.route:
        screen = ForgotPasswordScreen();
        break;
    }

    if (bootStage == 2) {
      bootStage = 3;
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) {
          return screen;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    if (fullScreen) {
      return MaterialPageRoute(
        builder: (_) => screen,
        fullscreenDialog: true,
      );
    }

    return PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
      return screen;
    }, transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
      return FadeTransition(opacity: animation, child: child);
    });
  };
}
