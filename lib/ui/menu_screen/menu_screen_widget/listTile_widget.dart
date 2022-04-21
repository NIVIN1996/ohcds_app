import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/text_style/text_style.dart';

class ListTileWidget extends StatelessWidget {
  final String icon;
  final String tileText;
  final String textCount;
  final bool count;
  final void Function()? onTap;
  const ListTileWidget(
      {Key? key, required this.icon, required this.tileText, this.count = false, this.textCount = "0", this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: context.heightPx * 40,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:context.widthPx* 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    height: context.heightPx * 20,
                    width: context.widthPx * 24,
                    color: AppColor.whiteColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.widthPx * 21.0),
                    child: Text(tileText,
                        style: TextFontStyle.gothamText(color: AppColor.whiteColor, size: context.textPx * 16)),
                  ),
                ],
              ),
              count == true
                  ? CircleAvatar(
                      radius: 8,
                      backgroundColor: AppColor.yellowColor,
                      child: Text(textCount,
                          style: TextFontStyle.montserrat(color: AppColor.darkGrayColor, size: context.textPx * 10)),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
