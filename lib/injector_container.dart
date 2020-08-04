import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/data/repositories/user_repository.dart';
import 'package:mg/data/sources/cache/encrypted_storage.dart';
import 'package:mg/data/sources/remote/user_service.dart';
import 'package:mg/shared/config/api.dart';
import 'package:mg/shared/interceptors/error_handler_interceptor.dart';

import 'core/bloc/base_bloc.dart';

final getIt = GetIt.instance;

final logger = Logger();

abstract class _BoxName {
  static const CACHED = 'cached';

  static const APP_BLOC = 'app_bloc';
}

Future<void> setUpHive() async {
  await Hive.initFlutter();

  getIt.registerLazySingletonAsync<Box<String>>(
    () => Hive.openBox<String>(_BoxName.CACHED),
    instanceName: _BoxName.CACHED,
  );

  getIt.registerLazySingletonAsync<Box<AppStorage>>(
    () => Hive.openBox<AppStorage>(_BoxName.APP_BLOC),
    instanceName: _BoxName.APP_BLOC,
  );
}

void setUpDio() {
  getIt.registerLazySingleton(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Api.BASE_URL,
      ),
    );

    dio.interceptors.addAll([
      LogInterceptor(
        request: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
      ErrorHandlerInterceptor(dio),
    ]);

    return dio;
  });
}

void setUpCached() {
  getIt.registerLazySingletonAsync<EncryptedStorage>(() async {
    final box = await getIt.getAsync(instanceName: _BoxName.CACHED);

    return EncryptedStorage(box);
  });

  getIt.registerFactoryAsync<BaseBloc>(() async {
    final encryptedBox = await getIt.getAsync(instanceName: _BoxName.CACHED);
    final box = await getIt.getAsync(instanceName: _BoxName.APP_BLOC);

    return AppBloc(box, encryptedBox);
  });
}

void setUpService() {
  getIt.registerLazySingletonAsync<UserService>(() async {
    final dio = await getIt.getAsync<Dio>();

    return UserServiceImpl(dio);
  });
}

void setUpRepository() {
  getIt.registerLazySingletonAsync<UserRepository>(() async {
    final box = await getIt.getAsync(instanceName: _BoxName.CACHED);
    final userService = await getIt.getAsync<UserService>();

    return UserRepositoryImpl(userService, box);
  });
}

Future<void> setup() async {
  await setUpHive();

  setUpCached();

  setUpDio();

  setUpService();

  setUpRepository();
}
