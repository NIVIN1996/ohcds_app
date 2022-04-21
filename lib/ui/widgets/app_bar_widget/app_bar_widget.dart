import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';


import '../../../utils/image_path/image_path.dart';
import '../../../utils/text_style/text_style.dart';
import 'app_bar_size/app_bar_size.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool showFilter;
  final String label;
  final AppBar appBar;
  final void Function()? menuPress;
  final void Function()? filterPress;
  final void Function()? notificationPress;

  const AppBarWidget({
    Key? key,
    required this.appBar,
    this.menuPress,
    this.notificationPress,
    this.showFilter = true,
    this.label = "News4U",
    this.filterPress,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBarSize.appBarHeight(appBar));

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: AppColor.yellowColor,
      //! toolbar height
      shadowColor: AppColor.darkGrayBorderColor,

      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.logo2,
            fit: BoxFit.scaleDown,
            height:context.heightPx *25,

          ),
        ],
      ),
      // ! leading padding
      leading: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Scaffold.of(context).openDrawer();
          },
          child: Container(padding: AppBarSize.leadingPadding(context), child: AppBarSize.menuIconWidget(context)),
        );
      }),
      actions: [

        Padding(
          //! trailing padding
          padding: AppBarSize.tailingPadding(context),
          child: GestureDetector(
            onTap: notificationPress ??
                    () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  // context.pushNamed(ScreenNames.notificationScreen);
                },
            //! Search icon widget
            child: Container(child: AppBarSize.searchIconWidget(context)),
          ),
        ),

        Padding(
          //! trailing padding
          padding: AppBarSize.tailingPadding(context),
          child: GestureDetector(
            onTap: notificationPress ??
                    () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  // context.pushNamed(ScreenNames.notificationScreen);
                },
            //! Search icon widget
            child: Container(child: AppBarSize.notificationIconWidget(context)),
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}
