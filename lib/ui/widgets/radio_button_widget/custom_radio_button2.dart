import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/text_style/text_style.dart';

class CustomRadioWidget2<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;
  final String label;
  final String userName;
  final String address1;
  final String address2;
  final String contact;
  final String addressType;
  // final String selectedItem;
  final bool defaultAddress;

  const CustomRadioWidget2(
      {    required this.address1,
        required this.address2,
        required this.userName,
        required this.defaultAddress,
        required this.contact, required this.addressType,
      required this.value,
      required this.groupValue,
      required this.onChanged,
        // required this.selectedItem,
      this.width = 24,
      this.height = 24,
      this.label = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: context.widthPx * 5.0),
        child: GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Container(
            width: context.widthPx * 300,
            margin: EdgeInsets.only(right: context.widthPx * 10, bottom: context.heightPx * 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), // radius of 10
              color: defaultAddress==true ? AppColor.yellowColor : AppColor.primaryColor, // green as background color
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.widthPx * 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: context.heightPx * 10.0, horizontal: context.widthPx * 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$userName ($addressType)",
                          style:
                              TextFontStyle.gothamW700(color:defaultAddress==true ? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            onChanged(value);
                          },
                          child: Container(
                            height: height,
                            width: width,
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: value == groupValue && defaultAddress==true? AppColor.darkGrayBorderColor : AppColor.whiteColor,
                            ),
                            child: Center(
                              child: Container(
                                height: value == groupValue && defaultAddress==true  ? height - 15 : height - 2,
                                width: value == groupValue && defaultAddress==true ? width - 15 : width - 2,
                                decoration: ShapeDecoration(
                                  shape: const CircleBorder(),
                                  color: value == groupValue && defaultAddress==true ? AppColor.yellowColor : AppColor.darkGrayBorderColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppColor.darkGrayBorderColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.heightPx * 8.0),
                    child: Text(
                        address1,
                      style: TextFontStyle.gothamText(color:defaultAddress==true ? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 14),
                    ),
                  ),
                  Text(
                      address2,
                    style: TextFontStyle.gothamText(color:defaultAddress==true ? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.heightPx * 10.0),
                    child: Text(
                      contact,
                      style: TextFontStyle.gothamW700(color:defaultAddress==true ? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 13),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
