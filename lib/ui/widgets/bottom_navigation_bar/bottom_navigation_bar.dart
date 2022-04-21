import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/home_screen/home_screen.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/image_path/image_path.dart';
import '../../../utils/text_style/text_style.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int index;
  const BottomNavigationBarWidget({
    Key? key,
    this.index = 0,
  }) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Widget> tabPages = [];

  bool displayingCart = false;
  bool hideNavigationBar = false;
  int previousPage = 0;

  @override
  void initState() {
    super.initState();
    displayingCart = false;
    hideNavigationBar = false;

    _selectedIndex = widget.index;
    if (_selectedIndex == 1) {
      displayingCart = true;
    }
    previousPage = widget.index;
    tabPages = [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];

    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColor.yellowColor,
      bottomNavigationBar: Container(
        height: context.heightPx * 80,
        decoration: const BoxDecoration(
          color: AppColor.darkGrayColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
          boxShadow: [
            BoxShadow(color: AppColor.darkGrayColor, spreadRadius: 1, blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            enableFeedback: false,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 8.0),
                  child: ImageIcon(
                    _selectedIndex == 0 ? const AssetImage(AppImages.home2Img) : const AssetImage(AppImages.homeImg),
                    size: context.screenWidth > 600 ? context.widthPx * 30.0 : context.widthPx * 25.0,
                  ),
                ),
                label: ("Home"),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 8.0),
                  child: ImageIcon(
                    _selectedIndex == 1
                        ? const AssetImage(AppImages.searchImg2)
                        : const AssetImage(AppImages.searchImg),
                    size: context.screenWidth > 600 ? context.widthPx * 30.0 : context.widthPx * 25.0,
                  ),
                ),
                label: ("Search"),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 8.0),
                  child: ImageIcon(
                    _selectedIndex == 2 ? const AssetImage(AppImages.fav2Img) : const AssetImage(AppImages.favImg),
                    size: context.screenWidth > 600 ? context.widthPx * 30.0 : context.widthPx * 25.0,
                  ),
                ),
                label: ("Wishlist"),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 8.0),
                  child: ImageIcon(
                    _selectedIndex == 3 ? const AssetImage(AppImages.cartImg) : const AssetImage(AppImages.cart2Img),
                    size: context.screenWidth > 600 ? context.widthPx * 30.0 : context.widthPx * 25.0,
                  ),
                ),
                label: ("Cart"),
              ),
            ],
            onTap: _onTappedBar,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColor.darkGrayColor,
            unselectedItemColor: AppColor.darkGrayColor,
            backgroundColor: AppColor.yellowColor,
            showSelectedLabels: true,
            selectedLabelStyle: TextFontStyle.gothamText(color: AppColor.whiteColor, size: context.textPx * 14),
            unselectedLabelStyle: TextFontStyle.gothamText(color: AppColor.whiteColor, size: context.textPx * 14),
            showUnselectedLabels: true,
            iconSize: 30,
          ),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: tabPages,
        onPageChanged: _onTappedBar,
        controller: _pageController,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });

    _pageController.animateToPage(value, duration: const Duration(milliseconds: 1), curve: Curves.ease);
    previousPage = _selectedIndex;
  }
}
