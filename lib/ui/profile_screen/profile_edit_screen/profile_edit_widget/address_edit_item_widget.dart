import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../../../utils/text_style/text_style.dart';
import '../../../../utils/image_path/image_path.dart';
import '../../../navigation/navigation_routes.dart';
import 'add_address_popup.dart';

class AddressEditListItem extends StatefulWidget {
  final int index;
  final String userName;
  final String address1;
  final String address2;
  final String contact;
  final String addressType;
  final bool defaultAddress;

  const AddressEditListItem({
    Key? key,
    required this.index,
    required this.address1,
    required this.address2,
    required this.userName,
    required this.defaultAddress,
    required this.contact, required this.addressType,
  }) : super(key: key);

  @override
  _AddressEditListItemState createState() => _AddressEditListItemState();
}

class _AddressEditListItemState extends State<AddressEditListItem> {
  bool selectBookmark = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: context.widthPx * 300,
        margin: EdgeInsets.only(right: context.widthPx * 10, bottom: context.heightPx * 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // radius of 10
          color:widget.defaultAddress ==true? AppColor.yellowColor:AppColor.darkGrayBorderColor, // green as background color
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
                      "${widget.userName} (${widget.addressType})",
                      style: TextFontStyle.gothamW700(color:widget.defaultAddress ==true? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        showPopup(context);
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
              ),
               Divider(
                color:widget.defaultAddress ==true? AppColor.darkGrayBorderColor:AppColor.primaryColor,
                 height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(top: context.heightPx * 8.0,),
                child: Text(
               widget.address1,
                  style: TextFontStyle.gothamText(color:widget.defaultAddress ==true? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 14),
                ),
              ),
              Text(
                widget.address2,
                style: TextFontStyle.gothamText(color:widget.defaultAddress ==true? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: context.heightPx * 10.0),
                child: Text(
                  widget.contact,
                  style: TextFontStyle.gothamW700(color:widget.defaultAddress ==true? AppColor.darkGrayBorderColor:AppColor.whiteColor, size: context.textPx * 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
