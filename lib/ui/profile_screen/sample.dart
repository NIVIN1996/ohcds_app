import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen_widget/address_list_widget/address_list_widget.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen_widget/heading_widget.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen_widget/recent_order_list_widget/recent_order_widget.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen_widget/user_details_widget.dart';

import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/image_path/image_path.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../utils/text_style/text_style.dart';
import '../menu_screen/menu_screen.dart';
import '../widgets/app_bar_widget/app_bar_widget.dart';


class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({Key? key}) : super(key: key);

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.primaryColor,
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
                child: Container(
                  height: context.heightPx * 300,
                  color: AppColor.darkGrayBorderColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.widthPx * 24.0),
                    child: const ProfileHeadingWidget(),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: context.heightPx * 265.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // height: context.percentHeight * 100,
                  color: AppColor.primaryColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.heightPx * 150.0, left: context.widthPx * 24, right: context.widthPx * 24),
                        child: const UserDetailsWidget(heading: 'Personal Details'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.heightPx * 20.0, left: context.widthPx * 24, right: context.widthPx * 24),
                        child: const RecentOrderWidget(heading: "Recent Orders"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.heightPx * 20.0, left: context.widthPx * 24, right: context.widthPx * 24),
                        child: const AddressListWidget(heading: "My Addresses"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: context.heightPx * 30.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AppImages.setting2),
                              Padding(
                                padding: EdgeInsets.only(left: context.widthPx * 5.0),
                                child: Text(
                                  "Account Settings",
                                  style: TextFontStyle.brauerNeue700(
                                      color: AppColor.orangeColor, size: context.textPx * 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.heightPx * 80,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: context.heightPx * 198.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: context.widthPx * 60,
                    backgroundColor: AppColor.yellowColor,
                    child: Padding(
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
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: context.heightPx * 325.0),
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
