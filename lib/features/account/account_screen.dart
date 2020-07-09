import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/rounded_icon.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class AccountScreen extends StatelessWidget {
  static const route = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  ImagePaths.BG_ACCOUNT,
                  height: kToolbarHeight + 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                SafeArea(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: kToolbarHeight,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {},
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                translate(I18n.TXT_ACCOUNT_INFORMATION),
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimen.SPACE_X1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RoundedIcon(
                              icon: Icon(
                            Icons.call,
                            color: AppColor.RED,
                            size: 30,
                          )),
                          Column(
                            children: [
                              RoundedIcon(
                                  icon: Icon(
                                Icons.person,
                                size: 48,
                                color: AppColor.GREY,
                              )),
                              SizedBox(height: Dimen.SPACE_X1),
                              Text(
                                'Username',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text('Email'),
                            ],
                          ),
                          RoundedIcon(
                              icon: Icon(
                            Icons.edit,
                            size: 30,
                            color: AppColor.BLUE,
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text(translate(I18n.TXT_REQUEST_SUPPORT)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            title: Text(translate(I18n.TXT_DELETE)),
          )
        ],
      ),
    );
  }
}
