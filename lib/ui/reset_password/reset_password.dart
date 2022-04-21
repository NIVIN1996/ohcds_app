import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/reset_password/reset_password_widget/subHeading_widget.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../utils/button_widget/button_widget.dart';
import '../../utils/text_style/text_style.dart';
import '../../utils/validator/validator.dart';
import '../navigation/navigation_routes.dart';
import '../widgets/bottom_sheet_widget/bottom_sheet_widget.dart';
import '../widgets/heading_widget/auth_heading_widget.dart';
import '../widgets/logo_widget/logo_widget.dart';
import '../widgets/text_form_widget/text_form_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();
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
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoWidget(topPad: context.heightPx * 100.0),
                const AuthHeadingWidget(),
                const SubHeadingWidget(),
                TextFormWidget(
                  labelText: "New Password",
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
                TextFormWidget(
                  labelText: "Confirm Password",
                  controller: _confirmPasswordTextController,
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
                  padding: EdgeInsets.only(bottom: context.heightPx * 32.0, top: context.heightPx * 25),
                  child:  CustomButton(
                    label: "UPDATE",
                    onPress: (){
                      bottomSheetWidget(
                        context,
                        "Your password has been successfully updated! Please continue to Login.",
                            () => context.pushNamed(ScreenNames.loginScreen),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(ScreenNames.loginScreen);
                        },
                        child: Text("Back to Login",
                            textAlign: TextAlign.center,
                            style: TextFontStyle.subText(
                                size: context.textPx * 16, thickness: 1.5, color: AppColor.yellowColor)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: context.heightPx * 20.0),
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
