import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/image_path/image_path.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

class LogoWidget extends StatelessWidget {
  final double topPad;
  const LogoWidget({Key? key, required this.topPad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPad,
          bottom: context.heightPx * 10,
          left: context.widthPx * 49,
          right: context.widthPx * 49),
      child: Image.asset(
        AppImages.logo,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
