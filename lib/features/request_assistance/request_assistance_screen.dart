import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mg/features/request_assistance/widgets/top_bar.dart';
import 'package:mg/i18n/i18n.dart';
import 'package:mg/shared/widgets/base_screen.dart';
import 'package:mg/style/dimen.dart';

class RequestAssistanceScreen extends StatelessWidget {
  static const route = '/request_assistance';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: translate(I18n.TXT_REQUEST_ASSISTANCE),
      enableDrawer: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        SizedBox(width: Dimen.SPACE_X1),
      ],
      child: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(),
          ],
        ),
      ),
    );
  }
}
