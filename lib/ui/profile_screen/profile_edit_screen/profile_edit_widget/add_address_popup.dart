import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../utils/button_widget/button_widget.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_style/text_style.dart';
import '../../../widgets/dropdown_widget/dropdown_widget.dart';
import '../../../widgets/text_form_widget/text_form_with_heading_widget.dart';

void showPopup(BuildContext context){
  final _addressTextController = TextEditingController();
  final _cityTextController = TextEditingController();
  final _stateTextController = TextEditingController();
  final _countryTextController = TextEditingController();
  final _postCodeTextController = TextEditingController();
  final _contactTextController = TextEditingController();
  bool isChecked = false;
  showModalBottomSheet<void>(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (builder) {
      return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: context.percentHeight * 85,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
                color: AppColor.primaryColor,
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: context.widthPx * 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: context.widthPx * 24.0,
                              top: context.heightPx * 40,
                              bottom: context.heightPx * 6),
                          child: Text(
                            "Add New Address",
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 18),
                          ),
                        ),
                        TextFormWithHeadingWidth(
                          controller: _addressTextController,
                          label: "Address",
                        ),
                        TextFormWithHeadingWidth(
                          controller: _cityTextController,
                          label: "City",
                        ),
                        DropDownWidget(
                          showEyeIcon: true,edit: false,
                          controller: _stateTextController,
                          label: "State",
                        ),
                        DropDownWidget(
                          showEyeIcon: true,
                          edit: false,
                          controller: _countryTextController,
                          label: "Country",
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextFormWithHeadingWidth(
                                controller: _postCodeTextController,
                                label: "PostCode",
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: TextFormWithHeadingWidth(
                                controller: _contactTextController,
                                label: "Contact Number",
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:context.widthPx* 5.0),
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                checkColor: AppColor.darkGrayBorderColor,
                                activeColor: AppColor.yellowColor,
                                fillColor: MaterialStateProperty.all(AppColor.whiteColor),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                value: isChecked,
                              ),
                              Text(
                                "Make this my default address",
                                style: TextFontStyle.gothamText(color:AppColor.whiteColor,size: context.textPx * 14),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                              left: context.widthPx * 24.0, top: context.heightPx * 10,bottom:context.heightPx* 20),
                          child: Row(
                            children: [
                              Expanded(
                                  child: CustomButton(
                                    label: "CANCEL",
                                    color: AppColor.lightGrayColor,
                                    iconDisable: false,
                                    textColor: AppColor.blackColor,
                                    onPress: () {
                                      Navigator.pop(context);
                                    },
                                  )),
                              SizedBox(
                                width: context.widthPx * 16,
                              ),
                              Expanded(
                                  child: CustomButton(
                                    label: "SUBMIT",
                                    iconDisable: true,
                                    onPress: () {
                                      context.pushNamed(ScreenNames.profileScreen);
                                    },
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );}
      );
    },
  );
}