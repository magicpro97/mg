import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mg/core/providers/async_bloc_provider.dart';
import 'package:mg/core/utils/platform_page_route.dart';
import 'package:mg/features/account/account_screen.dart';
import 'package:mg/features/cancel/cancel_screen.dart';
import 'package:mg/features/change_password/change_password_screen.dart';
import 'package:mg/features/feedback/feedback_screen.dart';
import 'package:mg/features/home/bloc/home_bloc.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/features/login/login_bloc.dart';
import 'package:mg/features/login/login_screen.dart';
import 'package:mg/features/register/sign_up_bloc.dart';
import 'package:mg/features/register/sign_up_screen.dart';
import 'package:mg/features/register_vehicle/register_vehicle_screen.dart';
import 'package:mg/features/request_assistance/request_assistance_screen.dart';
import 'package:mg/features/request_status/request_status_screen.dart';
import 'package:mg/features/reset_password/forgot_password_bloc.dart';
import 'package:mg/features/reset_password/forgot_password_screen.dart';
import 'package:mg/features/screen.dart';
import 'package:mg/features/waiting/waiting_screen.dart';
import 'package:mg/injector_container.dart';

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
        screen = AsyncBlocProvider(
          asyncBloc: getIt.getAsync<LoginBloc>(),
          child: LoginScreen(),
        );
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
        screen = AsyncBlocProvider(
          asyncBloc: getIt.getAsync<SignUpBloc>(),
          child: SignUpScreen(),
        );
        break;
      case RegisterVehicleScreen.route:
        screen = RegisterVehicleScreen();
        break;
      case ChangePasswordScreen.route:
        screen = ChangePasswordScreen();
        break;
      case ForgotPasswordScreen.route:
        screen = BlocProvider(
          create: (_) => getIt.get<ForgotPasswordBloc>(),
          child: ForgotPasswordScreen(),
        );
        break;
      case FeedbackScreen.route:
        screen = FeedbackScreen();
        break;
      case CancelScreen.route:
        screen = CancelScreen();
        break;
      case AccountScreen.route:
        screen = AccountScreen();
        break;
      case WaitingScreen.route:
        screen = WaitingScreen();
        break;
      case RequestStatusScreen.route:
        screen = RequestStatusScreen();
        break;
      case RequestAssistanceScreen.route:
        screen = RequestAssistanceScreen();
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
      return PlatformPageRoute.create(
        builder: (_) => screen,
        fullscreenDialog: fullScreen,
      );
    }

    if (screen is LoginScreen) {
      return PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
        return screen;
      }, transitionsBuilder:
          (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      });
    }

    return PlatformPageRoute.create(
      builder: (_) => screen,
    );
  };
}
