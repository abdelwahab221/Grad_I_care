import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_six.dart';

import 'screen_of_profile_one.dart';
import 'screen_of_profile_two.dart';
import 'screen_profile_eight.dart';
import 'screen_profile_five.dart';
import 'screen_profile_four.dart';
import 'screen_profile_seven.dart';
import 'screen_profile_three.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //  physics: const NeverScrollableScrollPhysics(),
        children: const [
          ScreenOfProfileOne(),
          // ScreenOfProfileTwo(),
          ScreenOfProfileThree(),
          ScreenProfileFour(),
          ScreenProfileFive(),
          quissix(),
          ScreenOfProfileSeven(),
          ScreenOfProfileEight(),
          // Container(color: Colors.red),
        ],
      ),
    );
  }
}
