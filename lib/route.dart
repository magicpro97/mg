import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/bloc/home_bloc.dart';
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
      case HomeScreen.route:
        screen = BlocProvider(
          create: (BuildContext context) {
            return HomeBloc();
          },
          child: HomeScreen(),
        );
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
