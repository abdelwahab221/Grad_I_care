import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_view.dart/screen_of_profile_one.dart';
import 'package:flutter_application_1/questions_view.dart/screen_of_profile_two.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_eight.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_five.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_four.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_three.dart';
import 'package:flutter_application_1/screens/Regstration/forget.dart';
import 'package:flutter_application_1/screens/Regstration/reset_Screen.dart';
import 'package:flutter_application_1/screens/Regstration/sign.dart';
import 'package:flutter_application_1/screens/aboutuspage.dart';
import 'package:flutter_application_1/screens/contactpage.dart';
import 'package:flutter_application_1/screens/profile/add_record.dart';
import 'package:flutter_application_1/screens/profile/profile_screen.dart';
import 'package:flutter_application_1/screens/profile/profiledepart.dart';
import 'package:flutter_application_1/screens/service.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/Regstration/login_screen.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/AddPatient.dart';
import 'package:flutter_application_1/screens/savedSuccessfully.dart';
import 'package:flutter_application_1/screens/search_for_patient.dart';
import 'questions.dart';
import 'questions_view.dart/page_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1366, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, child) {
          return MaterialApp(
            title: 'I Care',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const LoginScreen(),
          );
        });
  }
}
