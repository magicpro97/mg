import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../i18n/i18n.dart';
import '../../shared/constants/image_paths.dart';
import '../../shared/widgets/base_screen.dart';
import '../../shared/widgets/clickable_text.dart';
import '../../shared/widgets/rounded_text_field.dart';
import '../../style/color.dart';
import '../../style/dimen.dart';

class FeedbackScreen extends HookWidget {
  static const route = '/feedback';

  @override
  Widget build(BuildContext context) {
    final rating = useState(0.0);

    return BaseScreen(
      title: translate(I18n.TXT_THANK_YOU),
      leading: Center(
        child: ClickableText(
          text: translate(I18n.TXT_SKIP),
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.check,
              color: AppColor.BLACK,
            ),
            onPressed: () {})
      ],
      child: Padding(
        padding: const EdgeInsets.all(Dimen.SPACE_X2),
        child: Column(
          children: <Widget>[
            SizedBox(height: Dimen.SPACE_X2),
            Image.asset(ImagePaths.IC_SUCCESS),
            SizedBox(height: Dimen.SPACE_X1),
            Text(
              translate(I18n.TXT_THANK_YOU_EXCLAMATION).toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: AppColor.GREEN_3BB54A),
            ),
            SizedBox(height: Dimen.SPACE_X1),
            Text(
              translate(I18n.TXT_FEEDBACK_INSTRUCTION),
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Dimen.SPACE_X1),
            SmoothStarRating(
                allowHalfRating: false,
                onRated: (v) {},
                starCount: 5,
                rating: rating.value,
                size: 40.0,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                color: AppColor.YELLOW,
                borderColor: AppColor.YELLOW,
                spacing: 0.0),
            SizedBox(height: Dimen.SPACE_X2),
            RoundedTextField(),
          ],
        ),
      ),
    );
  }
}
