import 'package:avatar_course2_5/core/constants.dart';
import 'package:avatar_course2_5/core/resources/manager_assets.dart';
import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:avatar_course2_5/core/resources/manager_width.dart';
import 'package:avatar_course2_5/core/routes.dart';
import 'package:avatar_course2_5/core/widgets/base_button.dart';
import 'package:avatar_course2_5/core/widgets/base_text_widget.dart';
import 'package:avatar_course2_5/core/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Constants.elevationZero,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: ManagerWidth.w30,
            vertical: ManagerHeights.h30,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  ManagerAssets.logo,
                  width: ManagerWidth.w80,
                  height: ManagerHeights.h100,
                ),
              ),
              const SizedBox(height: ManagerHeights.h48,),
              baseText(
                text: ManagerStrings.signInButton.toUpperCase(),
              ),
              const SizedBox(height: ManagerHeights.h48,),
              TextFormFieldWidget(
                labelText: ManagerStrings.emailHintText,
                hintText: ManagerStrings.emailHintText,
                controller: emailController,
              ),
              TextFormFieldWidget(
                labelText: ManagerStrings.passwordHintText,
                hintText: ManagerStrings.passwordHintText,
                controller: passwordController,
              ),
              const SizedBox(height: ManagerHeights.h16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: ManagerWidth.w10,
                        height: ManagerHeights.h10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ManagerColors.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: ManagerWidth.w6,),
                      baseText(
                        text: ManagerStrings.rememberMe,
                        fontSize: ManagerFontSizes.s16,
                        fontWeight: ManagerFontWeight.w400,
                      ),
                    ],
                  ),
                  baseText(
                    text: ManagerStrings.forgetPassword,
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.regular,
                    color: ManagerColors.primaryColor,
                  ),
                ],
              ),
              const SizedBox(height: ManagerHeights.h38,),
              Row(
                children: [
                  baseText(
                    text: ManagerStrings.dontHaveAccount,
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.w400,
                  ),
                  const SizedBox(width: ManagerWidth.w6,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.signUpView);
                    },
                    child: baseText(
                      text: ManagerStrings.signUpButton,
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ManagerHeights.h48,),
              BaseButton(
                onPressed: () {},
                text: ManagerStrings.loginButton,
                textStyle: TextStyle(
                  color: ManagerColors.white,
                ),
              ),
              const SizedBox(height: ManagerHeights.h12,),
              Align(
                alignment: Alignment.center,
                child: baseText(
                  text: ManagerStrings.orText,
                  color: ManagerColors.hintColor,
                  fontSize: ManagerFontSizes.s16,
                ),
              ),
              const SizedBox(height: ManagerHeights.h12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ManagerAssets.facebook_icon, width: ManagerWidth.w60, height: ManagerHeights.h60,),
                  Image.asset(ManagerAssets.google_icon, width: ManagerWidth.w60, height: ManagerHeights.h60,),
                  Image.asset(ManagerAssets.twitter_icon, width: ManagerWidth.w60, height: ManagerHeights.h60,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
