import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_font_weight.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../../core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Hello I am init state');
    Future.delayed(Duration(seconds: Constants.splashTime), () {
      print('Hello I am in Future');
      // Navigator.pushNamed(context, Routes.bioScreen);
      Navigator.pushReplacementNamed(context, Routes.mainScreen);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ManagerColors.secondaryColor,
              ManagerColors.brown200,
              ManagerColors.white70,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd
          ),
        ),
        child: Center(
          child: Text(
            ManagerStrings.appName,
            style: TextStyle(
              fontFamily: ManagerFont.appFont,
              fontSize: ManagerFontSizes.s26,
              fontWeight: ManagerFontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
