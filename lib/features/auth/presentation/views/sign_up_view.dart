import 'package:avatar_course2_5/core/constants.dart';
import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_margin.dart';
import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:avatar_course2_5/core/resources/manager_width.dart';
import 'package:avatar_course2_5/routes/routes.dart';
import 'package:avatar_course2_5/core/widgets/base_button.dart';
import 'package:avatar_course2_5/core/widgets/base_text_widget.dart';
import 'package:avatar_course2_5/core/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Constants.elevationZero,

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: ManagerHeights.h24,
            horizontal: ManagerMargin.v48,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              baseText(
                text: ManagerStrings.signInButton.toUpperCase(),
                color: ManagerColors.black,
                fontSize: ManagerFontSizes.s32,
              ),
              const SizedBox(height: ManagerHeights.h24,),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldWidget(
                      controller: userNameController,
                      hintText: ManagerStrings.userNameHintText,
                      labelText: ManagerStrings.userNameHintText,
                    ),
                    const SizedBox(height: ManagerHeights.h12,),
                    TextFormFieldWidget(
                      controller: emailController,
                      hintText: ManagerStrings.emailHintText,
                      labelText: ManagerStrings.emailHintText,
                    ),
                    const SizedBox(height: ManagerHeights.h12,),
                    TextFormFieldWidget(
                      controller: phoneNumberController,
                      hintText: ManagerStrings.phoneNumberHintText,
                      labelText: ManagerStrings.phoneNumberHintText,
                    ),
                    const SizedBox(height: ManagerHeights.h12,),
                    TextFormFieldWidget(
                      controller: passwordController,
                      hintText: ManagerStrings.passwordHintText,
                      labelText: ManagerStrings.passwordHintText,
                      suffixIcon: const Icon(Icons.remove_red_eye, color: ManagerColors.hintColor,),
                    ),
                    const SizedBox(height: ManagerHeights.h12,),
                    TextFormFieldWidget(
                      controller: confirmPasswordController,
                      hintText: ManagerStrings.passwordConfirmHintText,
                      labelText: ManagerStrings.passwordConfirmHintText,
                      suffixIcon: const Icon(Icons.remove_red_eye, color: ManagerColors.hintColor,),
                    ),
                    const SizedBox(height: ManagerHeights.h48,),
                    Row(
                      children: [
                        baseText(
                          text: ManagerStrings.alreadyHaveAccount,
                          fontSize: ManagerFontSizes.s16,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                        const SizedBox(width: ManagerWidth.w6,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, Routes.signUpView);
                          },
                          child: baseText(
                            text: ManagerStrings.signInButton,
                            fontSize: ManagerFontSizes.s16,
                            fontWeight: ManagerFontWeight.regular,
                            color: ManagerColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ManagerHeights.h60,),
              BaseButton(
                onPressed: () {},
                text: ManagerStrings.loginButton,
                textStyle: TextStyle(
                  color: ManagerColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
