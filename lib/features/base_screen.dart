import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mg/features/sidebar.dart';
import 'package:mg/style/dimen.dart';

class BaseScreen extends StatelessWidget {
  final Widget leading;
  final List<Widget> actions;
  final Widget child;
  final String title;
  final bool enableDrawer;
  final bool showAppbar;
  final bool isLoading;

  const BaseScreen({
    Key key,
    this.title,
    this.leading,
    this.actions,
    this.child,
    this.enableDrawer = false,
    this.showAppbar = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
        ),
        Visibility(
          visible: isLoading,
          child: Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(.3),
            child: const SpinKitPulse(
              color: Colors.orange,
              size: 100,
            ),
          ),
        )
      ],
    );
  }
}
