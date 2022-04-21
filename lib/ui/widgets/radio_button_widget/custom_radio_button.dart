import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/text_style/text_style.dart';

class CustomRadioWidget<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;
  final String label;

  const CustomRadioWidget(
      {required this.value, required this.groupValue, required this.onChanged, this.width = 24, this.height = 24, this.label=""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right:context.widthPx* 40.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              onChanged(value);
            },
            child: Container(
              height: height,
              width: width,
              decoration:  ShapeDecoration(
                shape: const CircleBorder(),
                color:value == groupValue?  AppColor.yellowColor:AppColor.whiteColor,
              ),
              child: Center(
                child: Container(
                  height:value == groupValue? height - 15:height - 2,
                  width:value == groupValue? width - 15:width - 2,
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                      color: value == groupValue? AppColor.darkGrayBorderColor:
                    AppColor.darkGrayBorderColor,
                  ),
                ),
              ),
            ),
          ),
           SizedBox(width:context.widthPx* 10,),
          Text(label, style: TextFontStyle.gothamText(color: AppColor.whiteColor, size: context.textPx * 15),)
        ],
      ),
    );
  }
}
