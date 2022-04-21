import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import 'package:ohcds_mob_app/utils/text_style/text_style.dart';
import '../../../../../models/address_model/address_model.dart';
import '../../../profile_edit_screen/profile_edit_widget/add_address_popup.dart';
import 'address_list_item_widget.dart';

class AddressListWidget extends StatefulWidget {
  final String heading;
  const AddressListWidget({Key? key, required this.heading}) : super(key: key);

  @override
  State<AddressListWidget> createState() => _AddressListWidgetState();
}

class _AddressListWidgetState extends State<AddressListWidget> {
  bool isExpanded = false;
  List<Address> addressItem = [
    Address(
        userName: "John Doe",
        address1: "JEWS LAGOON",
        address2: 'New South Wales(NSM)',
        contact: 'Contact : (02) 6745 0610',
        addressType: "Home",
        defaultAddress: true),
    Address(
        userName: "John Doe",
        address1: "JEWS LAGOON",
        address2: 'New South Wales(NSM)',
        contact: 'Contact : (02) 6745 0610',
        addressType: "office",
        defaultAddress: false),
    Address(
        userName: "John Doe",
        address1: "JEWS LAGOON",
        address2: 'New South Wales(NSM)',
        contact: 'Contact : (02) 6745 0610',
        addressType: "Optional",
        defaultAddress: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.darkGrayBorderColor,
      ),
      child: ListTileTheme(
        dense: true,
        child: ExpansionTile(
          trailing: Icon(
            isExpanded ? Icons.remove : Icons.add,
            size: 25,
            color: AppColor.whiteColor,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() => isExpanded = expanded);
          },
          title: Text(
            widget.heading,
            style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 16),
          ),
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(bottom:context.heightPx* 10.0,right:context.widthPx* 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap:(){
                      showPopup(context);
                    },
                    child: Text(
                      "Add New Address",
                      style:
                      TextFontStyle.subText(color: AppColor.orangeColor, size: context.textPx * 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.darkGrayBorderColor,
              ),
              height: context.heightPx * 144,
              width: context.widthPx * 320,
              // padding: EdgeInsets.only(right: 20),
              // padding: EdgeInsets.symmetric(horizontal: context.widthPx * 15, vertical: context.heightPx * 10),
              // margin: EdgeInsets.only(
              //     left: context.widthPx * 12, right: context.widthPx * 12, bottom: context.widthPx * 10),
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: addressItem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AddressListItem(
                    userName: addressItem[index].userName,
                    address1: addressItem[index].address1,
                    address2: addressItem[index].address2,
                    index: index,
                    contact: addressItem[index].contact,
                    defaultAddress: addressItem[index].defaultAddress,
                    addressType: addressItem[index].addressType,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
