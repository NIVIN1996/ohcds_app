
import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_edit_screen/profile_edit_screen.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen.dart';
import 'package:ohcds_mob_app/ui/reset_password/reset_password.dart';
import '../forgot_password/forgot_password.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';
import '../registration_screen/registration_screen.dart';
import '../widgets/bottom_navigation_bar/bottom_navigation_bar.dart';


class ScreenNames {
  static String currentRoute = "/";
  static const String loginScreen = "ui/login_screen/login_screen";
  static const String registrationScreen = "ui/registration_screen/registration_screen";
  static const String forgotPasswordScreen = "ui/forgot_password/forgot_password";
  static const String resetPasswordScreen = "ui/reset_password/reset_password";
  static const String homeScreen = "ui/home_screen/home_screen";
  static const String menuScreen = "ui/menu_screen/menu_screen";
  static const String profileScreen = "ui/profile_screen/profile_screen";
  static const String profileEditScreen = "ui/profile_screen/profile_edit_screen/profile_edit_screen";
  static const String bottomNavigationBar = "ui/bottom_Navigation_Bar/bottom_Navigation_Bar";

}

Route<dynamic> generateRoute(RouteSettings settings) {
  ScreenNames.currentRoute = settings.name!;

  switch (settings.name) {
    case ScreenNames.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case ScreenNames.registrationScreen:
      return MaterialPageRoute(builder: (context) => const RegistrationScreen());
    // case ScreenNames.chooseLanguageScreen:
    //   return MaterialPageRoute(builder: (context) => const ChooseLanguageScreen());
    case ScreenNames.forgotPasswordScreen:
      return MaterialPageRoute(builder: (context) => const ForgotPassword());
    case ScreenNames.resetPasswordScreen:
      return MaterialPageRoute(builder: (context) => const ResetPassword());
    case ScreenNames.homeScreen:
      return MaterialPageRoute(builder: (context) =>   const HomeScreen());
    case ScreenNames.profileScreen:
      return MaterialPageRoute(builder: (context) =>   const ProfileScreen());
    case ScreenNames.profileEditScreen:
      return MaterialPageRoute(builder: (context) =>   const ProfileEditScreen());
    case ScreenNames.bottomNavigationBar:
      return MaterialPageRoute(builder: (context) =>    const BottomNavigationBarWidget());


    default:
      return MaterialPageRoute(builder: (context) =>   const HomeScreen());
  }
}
