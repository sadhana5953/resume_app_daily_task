import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/Invoice%20Generator/pdf.dart';
import 'package:resume_app_daily_task/Screens/Invoice%20Generator/pdf_generator.dart';
import 'package:resume_app_daily_task/Screens/dynamic%20list/skill%20list.dart';
import 'package:resume_app_daily_task/Screens/dynamic%20list/skill.dart';
import 'package:resume_app_daily_task/Screens/homePage/homeScreen.dart';
import 'package:resume_app_daily_task/Screens/image_Picker/imagePicker.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen1.dart';
import 'package:resume_app_daily_task/Screens/loginPage/screen2.dart';
import 'package:resume_app_daily_task/Screens/registration/id.dart';
import 'package:resume_app_daily_task/Screens/registration/id2.dart';
import 'package:resume_app_daily_task/Screens/registration/practice.dart';
import 'package:resume_app_daily_task/gmail%20validation/page1.dart';
import 'package:resume_app_daily_task/gmail%20validation/page2.dart';
import 'package:resume_app_daily_task/gmail%20validation/page3.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Pdf(),
    '/pdf': (context) => Pdf(),
    '/print': (context) => printPdf(),
    '/skillList': (context) => skillPage1(),
    '/skill': (context) => skillPage2(),
    '/ID': (context) => idCard(),
    '/id': (context) => idCard2(),
    '/image': (context) => imagepicker(),
    '/gmail1': (context) => firstPage(),
    '/gmail2': (context) => secondPage(),
    '/gmail3': (context) => loginPage3(),
    '/login1': (context) => Loginscreen1(),
    '/login2': (context) => loginScreen2(),
    '/home': (context) => homescreen(),
  };
}
