import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformPageRoute {
  PlatformPageRoute._();

  static PageRoute create(
      {@required WidgetBuilder builder,
      String title,
      bool maintainState = true,
      RouteSettings settings,
      bool fullscreenDialog = false}) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            builder: builder,
            title: title,
            settings: settings,
            fullscreenDialog: false,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }
}
