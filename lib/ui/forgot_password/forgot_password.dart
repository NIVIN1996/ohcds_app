import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation.dart';
import 'package:ohcds_mob_app/ui/navigation/navigation_routes.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../utils/button_widget/button_widget.dart';
import '../../utils/text_style/text_style.dart';
import '../../utils/validator/validator.dart';
import '../widgets/bottom_sheet_widget/bottom_sheet_widget.dart';
import '../widgets/heading_widget/auth_heading_widget.dart';
import '../widgets/heading_widget/heading_widget.dart';
import '../widgets/logo_widget/logo_widget.dart';
import '../widgets/text_form_widget/text_form_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
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
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  LogoWidget(topPad: context.heightPx * 100.0),
                  const AuthHeadingWidget(),
                  const HeadingWidget(
                    heading: "Forgot Password",
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
                  Padding(
                    padding: EdgeInsets.only(bottom: context.heightPx * 32.0, top: context.heightPx * 25),
                    child: CustomButton(
                      label: "RESET PASSWORD",
                      onPress: () {
                        bottomSheetWidget(
                          context,
                          "You’re almost there, reset your password with the email we sent you!",
                          () => context.pushNamed(ScreenNames.resetPasswordScreen),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: context.heightPx * 30.0),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(ScreenNames.loginScreen);
                      },
                      child: Text("Back to Login",
                          textAlign: TextAlign.start,
                          style: TextFontStyle.subText(
                              size: context.textPx * 16, thickness: 1.5, color: AppColor.yellowColor)),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 30.0),
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
    );
  }
}
