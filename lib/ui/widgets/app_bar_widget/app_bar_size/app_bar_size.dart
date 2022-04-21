import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';

import '../../../../utils/image_path/image_path.dart';
import '../../../../utils/responsive_config/responsive_config.dart';

class AppBarSize {
  AppBarSize();

  static double tabToolbarHeight = 100;
  static double tabAppbarHeight = 100;

  static double appBarHeight(AppBar appBar) {
    double screenWidth = WindowProperties.screenWidth;
    if (screenWidth > 600) {
      return tabAppbarHeight;
    } else {
      return appBar.preferredSize.height;
    }
  }

  static double toolbarHeight(AppBar appBar) {
    double screenWidth = WindowProperties.screenWidth;
    if (screenWidth > 600) {
      return tabToolbarHeight;
    } else {
      return kToolbarHeight;
    }
  }

  static double menuIconWidth(BuildContext context) {
    return context.widthPx * 23;
  }

  static double notificationIconWidth(BuildContext context) {
    return context.widthPx * 23;
  }

  static double leadingPaddingSize(BuildContext context) {
    double pad = context.widthPx * 30;
    if (context.screenWidth > 600) {
      pad = 30;
    }
    return pad;
  }

  static EdgeInsets leadingPadding(BuildContext context) {
    return EdgeInsets.only(
      left: AppBarSize.leadingPaddingSize(context),
    );
  }

  static double tailingPaddingSize(BuildContext context) {
    double pad = context.widthPx * 30;
    if (context.screenWidth > 600) {
      pad = 45;
    }
    return pad;
  }

  static double emptyTailingPaddingSize(BuildContext context) {
    double pad = context.widthPx * 50;
    if (context.screenWidth > 600) {
      pad = 45;
    }
    return pad;
  }

  static EdgeInsets tailingPadding(BuildContext context) {
    return EdgeInsets.only(
      right: AppBarSize.tailingPaddingSize(context),
    );
  }

  static EdgeInsets emptyTailingPadding(BuildContext context) {
    return EdgeInsets.only(
      right: AppBarSize.emptyTailingPaddingSize(context),
    );
  }

  static double iconScale() {
    double screenWidth = WindowProperties.screenWidth;
    if (screenWidth > 600) {
      return 1.5;
    } else {
      return 1.0;
    }
  }

  //! ** Icon Widgets

  static Widget menuIconWidget(BuildContext context) {
    return Transform.scale(
      scale: iconScale(),
      child: SvgPicture.asset(
        AppImages.menu,
        height: context.heightPx * 20,
        width: context.widthPx * 24,
      ),
    );
  }
  static Widget backArrowIconWidget(BuildContext context) {
    return Transform.scale(
      scale: iconScale(),
      child: SvgPicture.asset(
        AppImages.backArrow,
        height: context.heightPx * 10,
        width: context.widthPx * 24,
        color: AppColor.blackColor,
      ),
    );
  }

  static Widget backIconWidget(BuildContext context) {
    return Transform.scale(
        scale: iconScale(),
        child: Image.asset(
          AppImages.backArrow,
          height: context.heightPx * 20,
          width: context.widthPx * 24,
          color: AppColor.darkGrayBorderColor,
        ),);
  }

  static Widget searchIconWidget(BuildContext context) {
    return Transform.scale(
      scale: iconScale(),
      child: SvgPicture.asset(
        AppImages.search,
      ),
    );
  }

  static Widget notificationIconWidget(BuildContext context) {
    return Transform.scale(
        scale: iconScale(),
        child: const Icon(
          Icons.notifications,
          color: AppColor.darkGrayColor,
        ));
  }

//! ** End Icons Widgets
}
