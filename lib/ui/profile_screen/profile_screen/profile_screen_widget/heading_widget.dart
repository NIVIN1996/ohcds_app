import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../utils/colors/colors.dart';
import '../../../../utils/image_path/image_path.dart';
import '../../../../utils/text_style/text_style.dart';


class ProfileHeadingWidget extends StatelessWidget {
  const ProfileHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:context.heightPx* 0.0, bottom:context.heightPx* 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.widthPx * 24,
            height: context.heightPx * 24,
          ),
          Text(
            "My Account",
            textAlign: TextAlign.center,
            style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 20),
          ),
          GestureDetector(
            onTap: (){
              context.pushNamed(ScreenNames.profileEditScreen);
            },
            child: Container(
              height: context.widthPx * 28,
              width: context.heightPx * 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), // radius of 10
                color: AppColor.grayColor, // green as background color
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppImages.edit,
                  height: context.heightPx * 16,
                  width: context.widthPx * 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
