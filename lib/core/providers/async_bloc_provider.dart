import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mg/core/bloc/base_bloc.dart';

class AsyncBlocProvider<T extends BaseBloc> extends StatelessWidget {
  final Future<T> asyncBloc;
  final Widget child;

  const AsyncBlocProvider({Key key, @required this.asyncBloc, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: asyncBloc,
      builder: (context, snapshot) => snapshot.hasData
          ? BlocProvider.value(
              value: snapshot.data,
              child: child,
            )
          : Container(),
    );
  }
}
