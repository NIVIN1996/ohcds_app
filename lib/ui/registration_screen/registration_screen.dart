import 'package:flutter/gestures.dart';
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

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoWidget(topPad: context.heightPx * 80.0),
                const AuthHeadingWidget(),
                const HeadingWidget(
                  heading: "Create your Account",
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: context.widthPx * 8.0),
                        child: TextFormWidget(
                          labelText: "First Name",
                          controller: _firstNameTextController,
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
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: context.widthPx * 8.0),
                        child: TextFormWidget(
                          labelText: "Last Name",
                          controller: _lastNameTextController,
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
                      ),
                    ),
                  ],
                ),
                TextFormWidget(
                  labelText: "Email",
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
                  labelText: "Phone Number",
                  controller: _phoneTextController,
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
                  child: CustomButton(
                    label: "CONTINUE",
                    onPress: () {
                      bottomSheetWidget(
                        context,
                        "Email has been sent to  your email! Please check.",
                            () => context.pushNamed(ScreenNames.bottomNavigationBar),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: context.heightPx * 30.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style:
                        TextFontStyle.hintText(size: context.textPx * 15, thickness: 0, color: AppColor.whiteColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Back to Login',
                              recognizer:  TapGestureRecognizer()..onTap = () => {
                                context.pushNamed(ScreenNames.loginScreen),
                              },
                              style: TextFontStyle.subText(
                                  size: context.textPx * 15, thickness: 1.5, color: AppColor.yellowColor)),
                        ]),
                  ),
                ),
                SizedBox(
                  height: context.heightPx* 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
