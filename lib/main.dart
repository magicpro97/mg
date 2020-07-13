import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localized_app.dart';

import 'app.dart';
import 'shared/constants/keys.dart';

void main() async {
  GoogleMap.init(Keys.GOOGLE_MAP);

  WidgetsFlutterBinding.ensureInitialized();

  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en'],
  );

  runApp(LocalizedApp(delegate, App()));
}
