import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:pharmacy/core/constant/rootes.dart';
import 'package:pharmacy/view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  AppRoute.login : (context) => const Login(),
};