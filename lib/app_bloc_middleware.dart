import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/features/home/home_screen.dart';
import 'package:mg/features/login/login_screen.dart';

class AppBlocMiddleware extends StatelessWidget {
  final Widget child;

  const AppBlocMiddleware({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listener: _appBlocListener,
        ),
      ],
      child: child,
    );
  }

  void _appBlocListener(BuildContext context, AppState state) {
    state.when(
      unAuthorized: () => Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.route, (route) => false),
      authorized: () => Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.route, (route) => false),
    );
  }
}
