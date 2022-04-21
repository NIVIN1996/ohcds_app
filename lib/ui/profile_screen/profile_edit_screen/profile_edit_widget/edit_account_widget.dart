import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../utils/colors/colors.dart';
import '../../../../utils/image_path/image_path.dart';
import '../../../../utils/text_style/text_style.dart';

class EditAccountWidget extends StatelessWidget {
  const EditAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34.0, bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
           Navigator.pop(context);
            },
            child: Container(
              height: context.widthPx * 28,
              // width: context.heightPx * 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // radius of 10
                color: AppColor.lightGrayColor, // green as background color
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "CANCEL",
                    style: TextFontStyle.brauerNeue700(color: AppColor.blackColor, size: context.textPx * 13),
                  )),
            ),
          ),
          Text(
            "Edit Account",
            textAlign: TextAlign.center,
            style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: context.widthPx * 28,
              // width: context.heightPx * 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // radius of 10
                color: AppColor.yellowColor, // green as background color
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "UPDATE",
                    style: TextFontStyle.brauerNeue700(color: AppColor.blackColor, size: context.textPx * 13),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
