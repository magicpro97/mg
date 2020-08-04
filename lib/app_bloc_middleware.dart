import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mg/app_bloc.dart';

class AppBlocMiddleware extends StatelessWidget {
  final Widget child;

  const AppBlocMiddleware({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listener: _appBlocListener,
        ),
      ],
      child: child,
    );
  }

  void _appBlocListener(BuildContext context, AppState state) {}
}
