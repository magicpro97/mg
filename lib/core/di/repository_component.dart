import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/base_repository.dart';

RepositoryProvider repositoryComponent(BaseRepository repository,
    {Widget child}) {
  return RepositoryProvider(
    create: (BuildContext context) {
      return repository;
    },
    child: child,
  );
}
