import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/homePage/homeScreen.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen1.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen2.dart';
import 'package:resume_app_daily_task/gmail%20validation/page1.dart';
import 'package:resume_app_daily_task/gmail%20validation/page2.dart';
import 'package:resume_app_daily_task/gmail%20validation/page3.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => firstPage(),
    '/gmail2': (context) => secondPage(),
    '/gmail3': (context) => loginPage3(),
    '/login1': (context) => Loginscreen1(),
    '/login2': (context) => loginScreen2(),
    '/home': (context) => homescreen(),
  };
}
