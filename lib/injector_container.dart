import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:mg/data/repositories/user_repository.dart';
import 'package:mg/data/sources/cache/encrypted_storage.dart';
import 'package:mg/data/sources/remote/user_service.dart';
import 'package:mg/shared/config/api.dart';
import 'package:mg/shared/interceptors/error_handler_interceptor.dart';

final getIt = GetIt.instance;

final logger = Logger();

void setup() async {
  await Hive.initFlutter();

  final cachedBox = await Hive.openBox('cached');

  getIt.registerLazySingleton(() => cachedBox, instanceName: 'cachedBox');

  getIt.registerLazySingleton(
      () => EncryptedStorage(getIt.get(instanceName: 'cachedBox')));

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

  getIt.registerLazySingleton<UserService>(() => UserServiceImpl(getIt.get()));

  getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(getIt.get(), getIt.get()));
}
