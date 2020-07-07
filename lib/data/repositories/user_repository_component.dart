import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/repository_component.dart';
import '../repositories/user_repository.dart';

RepositoryProvider userRepositoryComponent() {
  return repositoryComponent(UserRepository());
}
