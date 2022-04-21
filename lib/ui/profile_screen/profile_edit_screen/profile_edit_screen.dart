import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_edit_screen/profile_edit_widget/add_address_popup.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_edit_screen/profile_edit_widget/address_edit_item_widget.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_edit_screen/profile_edit_widget/edit_account_widget.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../models/address_model/address_model.dart';
import '../../../utils/button_widget/button_widget.dart';
import '../../../utils/image_path/image_path.dart';
import '../../../utils/text_style/text_style.dart';
import '../../menu_screen/menu_screen.dart';
import '../../widgets/app_bar_widget/app_bar_widget.dart';
import '../../widgets/date_time_picker/date_time_picker.dart';
import '../../widgets/radio_button_widget/radio_button_widget.dart';
import '../../widgets/text_form_widget/text_form_with_heading_widget.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> with TickerProviderStateMixin {
  final _lastNameTextController = TextEditingController();
  final _firstNameTextController = TextEditingController();
  final dateOfBirthController = TextEditingController();
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
    bool isChecked = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.darkGrayBorderColor,
      drawer: const MenuScreen(),
      appBar: AppBarWidget(
        menuPress: () {
          FocusManager.instance.primaryFocus?.unfocus();
          Scaffold.of(context).openDrawer();
        },
        notificationPress: () {
          FocusManager.instance.primaryFocus?.unfocus();
          // context.pushNamed(ScreenNames.notificationScreen);
        },
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.widthPx * 24.0),
                child: const EditAccountWidget(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: context.heightPx * 146.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // height: context.percentHeight * 100,
                  // constraints:  BoxConstraints(
                  //   maxHeight: context.percentHeight * 80,
                  // ),
                  color: AppColor.primaryColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.heightPx * 150.0,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: context.widthPx * 24.0),
                                child: TextFormWithHeadingWidth(
                                  controller: _firstNameTextController,
                                  label: "First Name",
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: context.widthPx * 24.0),
                                child: TextFormWithHeadingWidth(
                                  controller: _lastNameTextController,
                                  label: "Last Name",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.heightPx * 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: context.widthPx * 24.0),
                              child: Text(
                                "Gender",
                                style: TextFontStyle.gothamText(color: AppColor.whiteColor, size: context.textPx * 15),
                              ),
                            ),
                            const RadioButtonWidget(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: context.heightPx * 15.0, right: context.widthPx * 24),
                        child: GestureDetector(
                            child: TextFormWithHeadingWidth(
                              showEyeIcon: true,
                              label: 'Date of Birth',
                              controller: dateOfBirthController,
                              edit: false,
                            ),
                            onTap: () async {
                              String? selectedDate = await DateTimePicker.selectTimePicker(context,
                                  initialDate: dateOfBirthController.text == ""
                                      ? null
                                      : DateTime.parse(dateOfBirthController.text));
                              if (selectedDate != null) {
                                dateOfBirthController.text = selectedDate;
                              }
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.heightPx * 15.0,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: context.widthPx * 24, right: context.widthPx * 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Addresses",
                                    style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 16),
                                  ),
                                  GestureDetector(
                                    onTap: () {

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
                            Padding(
                              padding: EdgeInsets.only(top: context.heightPx * 16.0, bottom: context.heightPx * 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.primaryColor,
                                ),
                                height: context.heightPx * 144,
                                width: context.widthPx * 350,
                                // padding:
                                child: ListView.builder(
                                  // physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: addressItem.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return AddressEditListItem(
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.heightPx * 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: context.heightPx * 80.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: context.widthPx * 60,
                    backgroundColor: AppColor.yellowColor,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(context.widthPx * 3), // Border radius
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile_img.png',
                              fit: BoxFit.scaleDown,
                              height: context.widthPx * 120,
                              width: context.widthPx * 120,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: context.widthPx * 18,
                            backgroundColor: AppColor.orangeColor,
                            child: SvgPicture.asset(
                              AppImages.edit,
                              height: context.heightPx * 15,
                              width: context.widthPx * 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: context.heightPx * 210.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: context.heightPx * 4.0),
                        child: Text(
                          "John Doe",
                          style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: context.heightPx * 4.0),
                        child: Text(
                          "+61 7 7010 1111",
                          style: TextFontStyle.gothamW700(color: AppColor.yellowColor, size: context.textPx * 13),
                        ),
                      ),
                      Text(
                        "john.doe@example.com",
                        style: TextFontStyle.gothamW700(color: AppColor.yellowColor, size: context.textPx * 13),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
