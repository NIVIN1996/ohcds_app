import 'package:flutter/cupertino.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/text_style/text_style.dart';

class AuthHeadingWidget extends StatelessWidget {
  const AuthHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.heightPx * 13, bottom: context.heightPx * 45.0),
      child: RichText(
        text: TextSpan(
            text: "OhCDs",
            style: TextFontStyle.compactaText(size: context.textPx * 26, color: AppColor.whiteColor),
            children: <TextSpan>[
              TextSpan(
                  text: ' LOGIN',
                  style:
                      TextFontStyle.compactaText(size: context.textPx * 26, color: AppColor.whiteColor))
            ]),
      ),
    );
  }
}
