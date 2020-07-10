import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/widgets/anim/ripples_animation.dart';
import '../../shared/widgets/clickable_text.dart';
import '../../shared/widgets/rounded_icon.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class WaitingScreen extends StatelessWidget {
  static const route = '/waiting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PRIMARY,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: Dimen.SPACE_X2),
              Text(
                translate(I18n.TXT_WAITING_TITLE),
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: Dimen.SPACE_X1),
              Text(translate(I18n.TXT_REQUEST_ID, args: {'id': 1})),
              SizedBox(height: Dimen.SPACE_X1),
              Text(translate(I18n.TXT_PLEASE_WAIT)),
              SizedBox(height: Dimen.SPACE_X1),
              Text(translate(I18n.TXT_WAIT_INSTRUCTION)),
              Spacer(),
              RipplesAnimation(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RoundedIcon(
                    icon: Icon(
                      Icons.call,
                      color: AppColor.WHITE,
                      size: 32,
                    ),
                    backgroundColor: AppColor.BLACK,
                  ),
                  SizedBox(width: Dimen.SPACE_X2),
                  ClickableText(
                    text: translate(I18n.TXT_CANCEL),
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
