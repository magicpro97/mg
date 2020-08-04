import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localized_app.dart';
import 'package:mg/app.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/data/repositories/user_repository.dart';
import 'package:mg/injector_container.dart';
import 'package:mg/shared/constants/keys.dart';

void main() async {
  GoogleMap.init(Keys.GOOGLE_MAP);

  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  final userRepository = await getIt.getAsync<UserRepository>();
  final appBloc = await getIt.getAsync<AppBloc>();

  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en'],
  );

  runApp(
    LocalizedApp(
      delegate,
      App(
        userRepository: userRepository,
        appBloc: appBloc,
      ),
    ),
  );
}
