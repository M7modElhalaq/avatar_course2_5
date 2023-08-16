import 'package:avatar_course2_5/features/auth/presentation/views/login_view.dart';
import 'package:avatar_course2_5/features/auth/presentation/views/sign_up_view.dart';
import 'package:avatar_course2_5/features/home/presentation/views/home_view.dart';
import 'package:avatar_course2_5/features/out_boarding/presentation/views/out_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/resources/manager_font_sizes.dart';
import 'routes/routes.dart';
import 'features/auth/presentation/views/auth_view.dart';
import 'features/main_screen.dart';
import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}