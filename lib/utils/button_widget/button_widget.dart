import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../utils/text_style/text_style.dart';
import '../colors/colors.dart';


class CustomButton extends StatelessWidget {
  final String label;
  final Function()? onPress;
  final bool disable;
  final bool iconDisable;
  final Color color;
  final double height;
  final Color disabledColor;
  final Color textColor;
  final double radius;
  final double textSize;

  const CustomButton(
      {Key? key,
        required this.label,
        this.disable = false,
        this.color = AppColor.orangeColor,
        this.disabledColor = AppColor.whiteColor,
        this.height = 44,
        this.radius = 30,
        this.textSize = 20,
        this.onPress, this.textColor =AppColor.whiteColor, this.iconDisable=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: context.heightPx * height,
        child: IgnorePointer(
          ignoring: disable,
          child: TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextFontStyle.buttonText(
                      color: disable
                          ? disabledColor
                          : (onPress == null)
                          ? disabledColor
                          : textColor,
                      size: context.textPx * textSize),
                ),
                iconDisable== true?   SizedBox(width:context.widthPx* 10,):const SizedBox(),
                 iconDisable== true? const Icon(Icons.arrow_forward_rounded,size: 20,color: AppColor.whiteColor,):const SizedBox()
              ],
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                ),
                primary: AppColor.whiteColor,
                backgroundColor: color,
                enableFeedback: false),
            onPressed: disable ? null : onPress,
          ),
        ));
  }
}
