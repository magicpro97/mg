import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication_bloc.dart';

BlocProvider authenticationBlocComponent({Widget child}) {
  return BlocProvider(
    create: (BuildContext context) => AuthenticationBloc(),
    child: child,
  );
}
