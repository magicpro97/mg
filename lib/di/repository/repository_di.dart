import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

MultiRepositoryProvider globalRepository({
  @required List<RepositoryProvider> repositories,
  @required Widget child,
}) {
  return MultiRepositoryProvider(
    providers: repositories,
    child: child,
  );
}
