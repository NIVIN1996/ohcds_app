import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import 'package:ohcds_mob_app/utils/text_style/text_style.dart';

import '../menu_screen/menu_screen.dart';
import '../widgets/app_bar_widget/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Text("Home Screen",style: TextFontStyle.gothamText(color:AppColor.whiteColor,size:context.textPx* 20),),

      ),
    );
  }
}
