import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_radius.dart';
import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:avatar_course2_5/core/resources/manager_width.dart';
import 'package:avatar_course2_5/core/routes.dart';
import 'package:avatar_course2_5/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/widgets/base_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ManagerAssets.auth_background,
            height: double.infinity,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          Opacity(
            opacity: .5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ManagerAssets.auth_logo),
                  Image.asset(ManagerAssets.auth_welcome_message),
                  ButtonWidget(
                    text: ManagerStrings.signInButton,
                    bgColor: ManagerColors.primaryColor,
                    onTap: (){
                      Navigator.pushNamed(context, Routes.loginView);
                    },
                  ),
                  const SizedBox(height: ManagerHeights.h24,),
                  ButtonWidget(
                    text: ManagerStrings.signUpButton,
                    bgColor: ManagerColors.white,
                    textColor: ManagerColors.primaryColor,
                    onTap: (){
                      Navigator.pushNamed(context, Routes.signUpView);
                    },
                  ),
                  const SizedBox(height: ManagerHeights.h24,),
                  ButtonWidget(
                    text: ManagerStrings.visitorButton,
                    bgColor: ManagerColors.visitorButtonColor.withOpacity(.8),
                    textColor: ManagerColors.white,
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
