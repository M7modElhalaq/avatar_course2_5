import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_radius.dart';
import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String? text;
  Color? textColor;
  Color? bgColor;
  void Function()? onTap;
  ButtonWidget({super.key, this.text, this.bgColor, this.onTap, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: ManagerHeights.h50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor ?? ManagerColors.primaryColor,
          borderRadius: BorderRadius.circular(ManagerRadius.r16),
        ),
        child: Text(
          text ?? '',
          style: TextStyle(
            color: textColor ?? ManagerColors.white,
          ),
        ),
      ),
    );
  }
}
