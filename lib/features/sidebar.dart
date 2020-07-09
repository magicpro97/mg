import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../i18n/i18n.dart';
import '../style/color.dart';
import '../style/dimen.dart';

final menu = [
  I18n.TXT_REQUEST_SUPPORT,
  I18n.TXT_REGISTER_VEHICLE,
  I18n.TXT_ACCOUNT_INFORMATION,
  I18n.TXT_SIGN_OUT,
].map((e) => translate(e)).toList();

class MenuItem extends StatelessWidget {
  final bool isSelected;
  final String name;
  final Function onPress;

  const MenuItem({
    Key key,
    this.isSelected = false,
    @required this.name,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.PRIMARY,
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(Dimen.SPACE_X1),
          child: Stack(
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.headline6,
              ),
              if (isSelected)
                Container(
                  width: context.size.width,
                  height: context.size.height,
                  color: AppColor.BLACK.withOpacity(0.7),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: Dimen.SPACE_X1),
        color: AppColor.PRIMARY,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Icon(Icons.person, size: 150),
              SizedBox(height: Dimen.SPACE_X1),
              Text(
                'username',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: Dimen.SPACE_X1),
              Text('email'),
              SizedBox(height: Dimen.SPACE_X1),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => menu
                      .map((e) => MenuItem(
                            name: e,
                            onPress: () {
                              log(index.toString());
                            },
                          ))
                      .toList()[index],
                  itemCount: menu.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
