import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ohcds_mob_app/ui/login_screen/login_screen.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart' as router;
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.yellowColor,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      home: const LoginScreen(),
    );
  }
}

