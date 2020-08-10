import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/widgets/buttons/rounded_button.dart';
import '../../shared/widgets/rounded_icon.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';
import '../base_screen.dart';

class RequestStatusScreen extends StatelessWidget {
  static const route = "/request_status";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return BaseScreen(
      title: translate(I18n.TXT_REQUEST_STATUS),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimen.SPACE_X2),
          width: screenWidth,
          child: Column(
            children: <Widget>[
              SizedBox(height: Dimen.SPACE_X2),
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.brightness_5,
                    color: AppColor.GREEN_3BB54A,
                    size: 120,
                  ),
                  RoundedIcon(
                    icon: Icon(
                      Icons.check,
                      color: AppColor.WHITE,
                      size: 48,
                    ),
                    backgroundColor: AppColor.GREEN_3BB54A,
                  ),
                ],
              ),
              SizedBox(height: Dimen.SPACE_X2),
              Text(translate(I18n.TXT_REQUEST_STATUS_INSTRUCTION)),
              Text(
                translate(I18n.TXT_REG_NO),
                style: textTheme.headline4,
              ),
              Text(
                'BFV 6999',
                style: textTheme.headline3.copyWith(
                  color: AppColor.GREEN_3BB54A,
                ),
              ),
              Divider(
                thickness: 10,
                color: AppColor.PRIMARY,
              ),
              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(Dimen.SPACE_X2),
                color: AppColor.GRAY_F9F9F9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Peter Pan',
                      style: textTheme.headline6,
                    ),
                    Text(translate(I18n.TXT_WORKSHOP)),
                    SizedBox(height: Dimen.SPACE_X1),
                    Text(translate(I18n.TXT_ABOUT_KM, args: {'km': 1.3})),
                    Icon(
                      Icons.directions_car,
                      color: AppColor.GREEN_3BB54A,
                      size: 80,
                    )
                  ],
                ),
              ),
              Spacer(),
              RoundedButton(
                label: translate(I18n.TXT_DONE),
                backgroundColor: AppColor.WHITE,
                borderColor: AppColor.BLACK,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
