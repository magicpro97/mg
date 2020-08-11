import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_translate/localized_app.dart';
import 'package:mg/app_bloc.dart';
import 'package:mg/data/repositories/token_repository.dart';
import 'package:mg/data/repositories/user_repository.dart';

import 'i18n/i18n.dart';
import 'route.dart';
import 'theme.dart';

class App extends StatelessWidget {
  final UserRepository userRepository;
  final AppBloc appBloc;
  final TokenRepository tokenRepository;

  const App({
    Key key,
    @required this.userRepository,
    @required this.appBloc,
    @required this.tokenRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return FlutterEasyLoading(
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<UserRepository>.value(value: userRepository),
          RepositoryProvider<TokenRepository>.value(value: tokenRepository),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AppBloc>.value(value: appBloc),
          ],
          child: LocalizationProvider(
            state: LocalizationProvider.of(context).state,
            child: MaterialApp(
              title: translate(I18n.APP_NAME),
              theme: AppTheme.defaultTheme,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                localizationDelegate,
              ],
              supportedLocales: localizationDelegate.supportedLocales,
              locale: localizationDelegate.currentLocale,
              onGenerateRoute: routes(),
            ),
          ),
        ),
      ),
    );
  }
}
