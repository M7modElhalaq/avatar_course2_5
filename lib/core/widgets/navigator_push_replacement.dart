import 'package:flutter/material.dart';

Future<Object?> navigatorPushReplacement(BuildContext context, {required String route}) {
  return Navigator.pushReplacementNamed(context, route);
}