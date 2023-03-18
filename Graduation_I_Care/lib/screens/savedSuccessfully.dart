import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addpatient.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/search_for_patient.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SavedSuccessfully extends StatefulWidget {
  const SavedSuccessfully({super.key});

  @override
  State<SavedSuccessfully> createState() => _SavedSuccessfullyState();
}

var animationdd = 3;

class _SavedSuccessfullyState extends State<SavedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80.h,
            width: double.infinity,
            child: const AppBaar(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      //padding: const EdgeInsets.fromLTRB(144, 0, 150, 0),
                      height: 80.h,
                      color: const Color(0xff1f2b6c),
                      child: const HomeBar()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          /* Text(
                            "Saved Successfully",
                            style: SafeGoogleFont("Yeseva One",
                                fontSize: 36.spMax,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff1f2b6c)),
                          ), */
                          10.ph,
                          Text(
                              "Saved Successfully",
                              style: SafeGoogleFont("Yeseva One",
                                  fontSize: 30.spMax,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff1f2b6c)),
                            ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddPatient()),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Color(0xff1f2b6c),
                              ))
                        ],
                      ),
                      Image.asset(
                        "assets/page-1/images/amicosavedsuccessfully.png",
                        scale: 1.r,
                      )
                    ],
                  ),
                  /**
                       * 
                       * 
                       * this is the footer
                       * 
                       * 
                       * 
                       */
                  const SizedBox(
                      width: double.infinity, height: 427, child: Footer())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
