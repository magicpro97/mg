import 'package:flutter/material.dart';
import 'package:mg/features/sidebar.dart';
import 'package:mg/style/dimen.dart';

class BaseScreen extends StatelessWidget {
  final Widget leading;
  final List<Widget> actions;
  final Widget child;
  final String title;
  final bool enableDrawer;
  final bool showAppbar;

  const BaseScreen({
    Key key,
    this.title,
    this.leading,
    this.actions,
    this.child,
    this.enableDrawer = false,
    this.showAppbar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: enableDrawer ? Sidebar() : null,
      appBar: showAppbar
          ? AppBar(
              elevation: Dimen.ELEVATION_APPBAR,
              title: Text(title ?? ''),
              centerTitle: true,
              leading: leading,
              actions: actions,
            )
          : null,
      body: child,
    );
  }
}
