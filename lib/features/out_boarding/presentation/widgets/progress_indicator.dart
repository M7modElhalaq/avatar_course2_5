import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_width.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_radius.dart';

Container progressIndicator({Color? color, double? width}) {
  return Container(
    width: width,
    height: ManagerHeights.h8,
    margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12,),
    decoration: BoxDecoration(
      color: color ?? ManagerColors.onBoardingSubTitleColor,
      borderRadius: BorderRadius.circular(
        ManagerRadius.r8,
      ),
    ),
  );
}
