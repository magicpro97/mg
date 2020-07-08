import 'package:flutter/material.dart';
import 'package:mg/style/dimen.dart';

class BaseScreen extends StatelessWidget {
  final Widget leading;
  final List<Widget> actions;
  final Widget child;
  final String title;
  final bool enableDrawer;

  const BaseScreen({
    Key key,
    @required this.title,
    this.leading,
    this.actions,
    this.child,
    this.enableDrawer = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: enableDrawer ? Drawer() : null,
        appBar: AppBar(
          elevation: Dimen.ELEVATION_APPBAR,
          title: Text(title),
          centerTitle: true,
          leading: leading,
          actions: actions,
        ),
        body: child,
      ),
    );
  }
}
