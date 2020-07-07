import 'package:flutter/material.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localized_app.dart';

import 'app.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en'],
  );

  runApp(LocalizedApp(delegate, App()));
}
