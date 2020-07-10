import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../../i18n/i18n.dart';
import '../../../shared/widgets/v_icon_button.dart';
import '../../../style/color.dart';
import '../../../style/dimen.dart';

class TopBar extends StatelessWidget {
  final Function(String) onRegNoChange;
  final Function(String) onCurrentPositionChange;
  final Function onSelectRegNoPress;

  const TopBar({
    Key key,
    this.onRegNoChange,
    this.onCurrentPositionChange,
    this.onSelectRegNoPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimen.SPACE_X2,
        vertical: Dimen.SPACE_X1,
      ),
      decoration: BoxDecoration(
        color: AppColor.WHITE,
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: translate(I18n.TXT_REG_NO),
                  prefixIcon: Icon(Icons.directions_car),
                  hintText: translate(I18n.TXT_INPUT_REG_NO),
                ),
                onChanged: onRegNoChange,
              ),
              Align(
                alignment: Alignment.centerRight,
                heightFactor: 1.4,
                child: IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: onSelectRegNoPress,
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              labelText: translate(I18n.TXT_CURRENT_LOCATION),
              prefixIcon: Icon(Icons.location_on),
              hintText: translate(I18n.TXT_INPUT_CURRENT_LOCATION),
            ),
            onChanged: onCurrentPositionChange,
          ),
          SizedBox(height: Dimen.SPACE_X1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              VIconButton(
                icon: Icon(
                  Icons.event_note,
                  size: 32,
                ),
                text: Text(translate(I18n.TXT_NOTE)),
              ),
              VIconButton(
                icon: Icon(
                  Icons.camera,
                  size: 32,
                ),
                text: Text(translate(I18n.TXT_CAMERA)),
              ),
              VIconButton(
                icon: Icon(
                  Icons.image,
                  size: 32,
                ),
                text: Text(translate(I18n.TXT_IMAGE)),
              ),
              VIconButton(
                icon: Icon(
                  Icons.account_balance_wallet,
                  size: 32,
                ),
                text: Text(translate(I18n.TXT_CASH)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
