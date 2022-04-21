import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/ui/registration_screen/registration_screen.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../utils/button_widget/button_widget.dart';
import '../../utils/text_style/text_style.dart';
import '../../utils/validator/validator.dart';
import '../widgets/heading_widget/auth_heading_widget.dart';
import '../widgets/heading_widget/heading_widget.dart';
import '../widgets/logo_widget/logo_widget.dart';
import '../widgets/text_form_widget/text_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool showEmailValidation = false;
  bool showPasswordValidation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.yellowColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: context.widthPx * 16, horizontal: context.widthPx * 16),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: context.widthPx * 24),
          height: context.percentHeight * 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.primaryColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoWidget(topPad: context.heightPx * 100.0),
                const AuthHeadingWidget(),
                const HeadingWidget(
                  heading: "Login with Email",
                ),
                TextFormWidget(
                  labelText: "Email Address",
                  controller: _emailTextController,
                  // focusNode: _focusEmail,
                  maxLength: 70,
                  // keyboardType: TextInputType.emailAddress,
                  validation: (value) => Validator.validateEmail(
                    email: value!.trimRight(),
                  ),
                  onChange: (String text) {
                    setState(() {
                      showEmailValidation = false;
                    });
                  },
                ),
                TextFormWidget(
                  labelText: "Password",
                  controller: _passwordTextController,
                  // focusNode: _focusEmail,
                  maxLength: 70,
                  obscureText: true,
                  showEyeIcon: true,
                  // keyboardType: TextInputType.emailAddress,
                  validation: (value) => Validator.validatePassword(
                    password: value,
                  ),
                  onChange: (String text) {
                    setState(() {
                      showPasswordValidation = false;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.heightPx * 16, bottom: context.heightPx * 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(ScreenNames.forgotPasswordScreen);
                        },
                        child: Text("Forgot Password?",
                            textAlign: TextAlign.start,
                            style: TextFontStyle.subText(
                                size: context.textPx * 15, thickness: 1.5, color: AppColor.yellowColor)),
                      ),
                    ],
                  ),
                ),
                 CustomButton(
                  label: "LOGIN",
                  onPress: (){
                    context.pushNamed(ScreenNames.bottomNavigationBar);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: context.heightPx * 32.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account yet? ",
                        style:
                            TextFontStyle.hintText(size: context.textPx * 15, thickness: 0, color: AppColor.whiteColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Create Account',
                              recognizer:  TapGestureRecognizer()..onTap = () => {
                                context.pushNamed(ScreenNames.registrationScreen),
                              },
                              style: TextFontStyle.subText(
                                  size: context.textPx * 15, thickness: 1.5, color: AppColor.yellowColor)),
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:  EdgeInsets.only(bottom:context.heightPx* 0.0),
                    child: TextButton(
                      onPressed: () {
                        context.pushNamedReplacement(ScreenNames.bottomNavigationBar, arguments: null);
                      },
                      child: Text("Continue without Logging in",
                          textAlign: TextAlign.start,
                          style: TextFontStyle.gothamTextWithUnderline(
                              size: context.textPx * 16, thickness: 1.5, color: AppColor.mediumGrayColor)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
