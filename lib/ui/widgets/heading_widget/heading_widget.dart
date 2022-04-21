import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/text_style/text_style.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  const HeadingWidget({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.heightPx * 10.0,bottom: context.heightPx*32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading,
              textAlign: TextAlign.start,
              style: TextFontStyle.heading(size: context.textPx * 20, color: AppColor.yellowColor)),
        ],
      ),
    );
  }
}
