import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';

Widget FloatingActionButtonWidget({
  Color? backgroundColor,
  required void Function()? onPressed,
  required Widget icon,
}) {
  return FloatingActionButton(
    backgroundColor: backgroundColor ?? ManagerColors.primaryColor,
    onPressed: onPressed,
    child: icon,
  );
}
