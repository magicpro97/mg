import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../features/request_assistance/widgets/top_bar.dart';
import '../../i18n/i18n.dart';
import '../../style/dimen.dart';
import '../base_screen.dart';
import 'widgets/map.dart';

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
            Expanded(
              child: MapView(),
            ),
          ],
        ),
      ),
    );
  }
}
