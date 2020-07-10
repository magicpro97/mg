import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localized_app.dart';

import 'app.dart';

void main() async {
  GoogleMap.init('AIzaSyB1XA-NjRkGZeDEPJ02IgIQHrz-iW1wZLc');

  WidgetsFlutterBinding.ensureInitialized();

  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en'],
  );

  runApp(LocalizedApp(delegate, App()));
}
