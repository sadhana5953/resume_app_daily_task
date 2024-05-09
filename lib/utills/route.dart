import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen1.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen2.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Loginscreen1(),
    '/login2': (context) => loginScreen2(),
  };
}
