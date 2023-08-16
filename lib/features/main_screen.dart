import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/resources/manager_colors.dart';
import '../core/resources/manager_font_sizes.dart';
import '../core/resources/manager_font_weight.dart';
import '../core/resources/manager_fonts.dart';
import '../core/resources/manager_icon_sizes.dart';
import '../core/resources/manager_strings.dart';
import '../core/widgets/base_text_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count = 1;
  int popupInitialValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.elevationZero,
        title: baseText(
          text: ManagerStrings.appName,
          fontSize: ManagerFontSizes.s24,
          fontFamily: ManagerFont.appFont,
          fontWeight: ManagerFontWeight.w600,
          color: ManagerColors.white70,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: ManagerColors.white70,
              size: ManagerIconSizes.s40,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Main Page'),
      ),
    );
  }
}
