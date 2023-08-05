import 'package:avatar_course2_5/core/constants.dart';
import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';
import '../resources/manager_width.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final bool isVisibleIcon;
  final double width;
  final double height;
  final Color bgColor;
  final double elevation;
  final int firstSpacer;
  final int lastSpacer;
  void Function() onPressed;

  TextStyle? textStyle = TextStyle(
    fontWeight: ManagerFontWeight.regular,
    fontSize: ManagerFontSizes.s16,
    color: ManagerColors.white,
  );

  Icon? icon = Icon(
    Icons.arrow_forward,
    color: ManagerColors.white,
  );

  BaseButton({
    Key? key,
    this.text = ManagerStrings.start,
    this.isVisibleIcon = false,
    this.width = ManagerWidth.w64,
    this.height = ManagerHeights.h50,
    this.bgColor = ManagerColors.primaryColor,
    this.elevation = Constants.elevationZero,
    this.firstSpacer = Constants.baseButtonFirstSpacerFlex,
    this.lastSpacer = Constants.baseButtonLastSpacerFlex,
    this.icon,
    this.textStyle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(
          width,
          height,
        ),
        elevation: elevation,
      ),
      child: Row(
        children: [
          Spacer(
            flex: firstSpacer,
          ),
          Text(
            text,
            style: textStyle,
          ),
          Spacer(
            flex: lastSpacer,
          ),
          Visibility(
            visible: isVisibleIcon,
            child: Icon(
              Icons.arrow_forward,
              color: ManagerColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
