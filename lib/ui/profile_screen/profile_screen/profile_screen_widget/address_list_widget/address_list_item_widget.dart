import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/radio_button_widget/custom_radio_button2.dart';

class AddressListItem extends StatefulWidget {
  final int index;
  final String userName;
  final String address1;
  final String address2;
  final String contact;
  final String addressType;
  final bool defaultAddress;

  const AddressListItem({
    Key? key,
    required this.index,
    required this.address1,
    required this.address2,
    required this.userName,
    required this.defaultAddress,
    required this.contact,
    required this.addressType,
  }) : super(key: key);

  @override
  _AddressListItemState createState() => _AddressListItemState();
}

class _AddressListItemState extends State<AddressListItem> {
  bool selectBookmark = false;
  String _selectedGender = '0';

  @override
  Widget build(BuildContext context) {
    return CustomRadioWidget2(
      height: 24,
      groupValue: _selectedGender,
      onChanged: (String value) {
        setState(() {
          _selectedGender = value;
        });
      },
      value: "0",
      userName: widget.userName,
      contact: widget.contact,
      address2: widget.address2,
      addressType: widget.addressType,
      address1: widget.address1,
      defaultAddress: widget.defaultAddress,
    );

    //   GestureDetector(
    //   onTap: () {},
    //   child: Container(
    //     width: context.widthPx* 300,
    //     margin:  EdgeInsets.only(right:context.widthPx* 10,bottom:context.heightPx* 10),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(4), // radius of 10
    //       color: AppColor.yellowColor, // green as background color
    //     ),
    //     child: Padding(
    //       padding:  EdgeInsets.symmetric(horizontal:context.widthPx* 8),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding:  EdgeInsets.symmetric(vertical:context.heightPx* 10.0,horizontal:context.widthPx* 5),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 // Text(
    //                 //   "John Doe (Home)",
    //                 //   style: TextFontStyle.gothamW700(color: AppColor.darkGrayBorderColor, size: context.textPx * 15),
    //                 // ),
    //                 CustomRadioWidget2(
    //                   height: 24,
    //                   groupValue: _selectedGender,
    //                   onChanged: (String value) {
    //                     setState(() {
    //                       _selectedGender = value;
    //                     });
    //                   },
    //                   value: "0",
    //                 ),
    //               ],
    //             ),
    //           ),
    //           const Divider(color: AppColor.darkGrayBorderColor,),
    //            Padding(
    //              padding:  EdgeInsets.only(top:context.heightPx* 8.0),
    //              child: Text("JEWS LAGOON",  style: TextFontStyle.gothamText(color: AppColor.darkGrayBorderColor, size: context.textPx * 14),),
    //            ),
    //            Text("New South Wales(NSM)",  style: TextFontStyle.gothamText(color: AppColor.darkGrayBorderColor, size: context.textPx * 14),),
    //            Padding(
    //              padding:  EdgeInsets.only(top:context.heightPx* 10.0),
    //              child: Text("Contact : (02) 6745 0610",  style: TextFontStyle.gothamW700(color: AppColor.darkGrayBorderColor, size: context.textPx * 13),),
    //            ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
