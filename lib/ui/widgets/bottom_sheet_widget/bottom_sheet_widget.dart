import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../utils/button_widget/button_widget.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_style/text_style.dart';

void bottomSheetWidget(BuildContext context,String description,Function()? onPress) {
  showModalBottomSheet<void>(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (builder) {
      return StatefulBuilder(builder: (context, setState) {
        return Container(
          height: context.percentHeight * 45,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
            color: AppColor.primaryColor,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height:context.heightPx* 30,
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom:context.heightPx* 20.0),
                  child: SvgPicture.asset("assets/svg/success.svg"),
                ),
                Text(
                  "Oh Yeah!",
                  style: TextFontStyle.heading(size: context.textPx * 26, color: AppColor.greenColor),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical:context.heightPx* 10.0,horizontal: context.widthPx*24),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextFontStyle.gothamText(size: context.textPx * 18, color: AppColor.whiteColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.widthPx * 135.0,vertical: 20),
                  child: CustomButton(
                    label: "Okay",
                    iconDisable: true,
                    onPress:onPress,
                  ),
                )
              ],
            ),
          ),
        );
      });
    },
  );
}
