import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/reset_password/reset_password.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/text_style/text_style.dart';

class SubHeadingWidget extends StatelessWidget {
  const SubHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: context.heightPx * 10.0,bottom: context.heightPx*8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Reset Password",
                  textAlign: TextAlign.start,
                  style: TextFontStyle.heading(size: context.textPx * 20, color: AppColor.yellowColor)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Your identity has been verified!",
                style: TextFontStyle.gothamText(size: context.textPx * 14, color: AppColor.whiteColor)),
          ],
        ),
        Padding(
          padding:  EdgeInsets.only(bottom:context.heightPx* 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Set your new password.",
                  style: TextFontStyle.gothamText(size: context.textPx * 14,  color: AppColor.whiteColor)),
            ],
          ),
        ),
      ],
    );
  }
}
