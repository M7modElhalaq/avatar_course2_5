import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  String? labelText;
  Widget? suffixIcon;
  TextFormFieldWidget({super.key, this.controller, this.hintText, this.labelText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ManagerColors.primaryColor,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText ?? '',
        labelText: labelText ?? '',
        hintStyle: const TextStyle(
          color: ManagerColors.hintColor,
        ),
        labelStyle: const TextStyle(
          color: ManagerColors.hintColor,
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ManagerColors.hintColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ManagerColors.primaryColor,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ManagerColors.hintColor),
        ),
      ),
    );
  }
}
