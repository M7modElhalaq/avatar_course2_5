import 'package:avatar_course2_5/core/resources/manager_assets.dart';
import 'package:flutter/material.dart';


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
    // Future.delayed(Duration(seconds: Constants.splashTime), () {
    //   Navigator.pushReplacementNamed(context, Routes.mainScreen);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ManagerAssets.splash_screen_background),
                  fit: BoxFit.cover,
                ),
              ),
          ),
          Center(
            child: Image(
              image: AssetImage(ManagerAssets.splash_screen_background2),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage(ManagerAssets.logo),
            ),
          ),
        ],
      ),
    );
  }
}
