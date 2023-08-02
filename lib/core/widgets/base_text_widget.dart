import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_strings.dart';

Text baseText({
  String? text,
  double? fontSize,
  String? fontFamily,
  FontWeight? fontWeight,
  Color? color,
}) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontSize: fontSize ?? ManagerFontSizes.s24,
      fontFamily: fontFamily ?? '',
      fontWeight: fontWeight ?? ManagerFontWeight.w600,
      color: color ?? ManagerColors.white70,
    ),
  );
}
