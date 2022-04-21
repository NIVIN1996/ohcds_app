import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../utils/colors/colors.dart';
import '../../utils/image_path/image_path.dart';
import '../../utils/text_style/text_style.dart';
import 'menu_screen_widget/listTile_widget.dart';
import 'menu_screen_widget/social_media_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(context.widthPx * 16), bottomRight: Radius.circular(context.widthPx * 16)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: context.heightPx * 150,
            child: DrawerHeader(
              curve: Curves.easeIn,
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: context.widthPx * 25,
                    backgroundColor: AppColor.yellowColor,
                    child: Padding(
                      padding: EdgeInsets.all(context.widthPx * 3), // Border radius
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile_img.png',
                          fit: BoxFit.scaleDown,
                          height: context.widthPx * 50,
                          width: context.widthPx * 50,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: context.widthPx * 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('John Doe',
                              style: TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 16)),
                          Text('john.doe@example.com',
                              // overflow: TextOverflow.ellipsis,
                              style: TextFontStyle.gothamText(color: AppColor.yellowColor, size: context.textPx * 13)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: context.widthPx * 10.0),
                      child: CircleAvatar(
                        backgroundColor: AppColor.grayColor,
                        radius: context.widthPx * 18,
                        child: SvgPicture.asset(
                          AppImages.signOut,
                          height: context.heightPx * 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: context.widthPx * 5.0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTileWidget(
                      icon: AppImages.profile,
                      tileText: "My Profile",
                      count: false,
                      onTap: () {
                        context.pushNamed(ScreenNames.profileScreen);
                      }),
                  ListTileWidget(icon: AppImages.order, tileText: "My Orders", count: false, onTap: () {}),
                  ListTileWidget(icon: AppImages.card, tileText: "Selling to OHCDS", count: false, onTap: () {}),
                  ListTileWidget(
                      icon: AppImages.myCard, tileText: "My Cart", count: true, textCount: "2", onTap: () {}),
                  ListTileWidget(
                      icon: AppImages.favorite, tileText: "My Wishlist", count: true, textCount: "2", onTap: () {}),
                  ListTileWidget(
                      icon: AppImages.notification,
                      tileText: "Notification",
                      count: true,
                      textCount: "6",
                      onTap: () {}),
                  ListTileWidget(icon: AppImages.offer, tileText: "Offers", count: false, onTap: () {}),
                  ListTileWidget(icon: AppImages.tickets, tileText: "Tickets", count: false, onTap: () {}),
                  ListTileWidget(icon: AppImages.claims, tileText: "Claims", count: false, onTap: () {}),
                  ListTileWidget(icon: AppImages.setting, tileText: "Settings", count: false, onTap: () {}),
                  ListTileWidget(icon: AppImages.call, tileText: "Contact Us", count: false, onTap: () {}),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: context.widthPx * 24.0, bottom: context.heightPx * 40),
              child: Row(
                children: const [
                  SocialMediaWidget(
                    icon: AppImages.tiktok,
                  ),
                  SocialMediaWidget(
                    icon: AppImages.twitter,
                  ),
                  SocialMediaWidget(
                    icon: AppImages.insta,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
