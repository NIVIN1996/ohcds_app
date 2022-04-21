import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/image_path/image_path.dart';

class SocialMediaWidget extends StatelessWidget {
  final String icon;
  const SocialMediaWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:context.widthPx* 10),
      height: context.widthPx * 40,
      width: context.heightPx * 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // radius of 10
        color: AppColor.grayColor, // green as background color
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          icon,
          height: context.heightPx * 20,
          width: context.widthPx * 24,
        ),
      ),
    );
  }
}
