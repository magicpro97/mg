import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mg/shared/config/api.dart';
import 'package:mg/shared/interceptors/error_handler_interceptor.dart';

import 'injector_container.config.dart';

final getIt = GetIt.instance;

final logger = Logger();

abstract class Name {
  static const baseUrl = "BaseUrl";

  static const cachedBox = "CachedBox";
}

@module
abstract class DioModule {
  @Named(Name.baseUrl)
  String get baseUrl => Api.BASE_URL;

  @lazySingleton
  Dio dio(@Named(Name.baseUrl) String url) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
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
  }
}

@module
abstract class HiveModule {
  @preResolve
  Future<void> get initHive => Hive.initFlutter();

  @Named(Name.cachedBox)
  Future<Box<String>> get prefs => Hive.openBox<String>('cached');
}

@injectableInit
void setup() => $initGetIt(getIt);
