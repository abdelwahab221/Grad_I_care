// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_five.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenProfileFour extends StatefulWidget {
  const ScreenProfileFour({Key? key}) : super(key: key);

  @override
  State<ScreenProfileFour> createState() => _ScreenProfileFourState();
}

List<String> items = ['Hypertension', 'Anemia', 'Diabetes', 'None'];
List<bool> checked = [false, false, false, false];

class _ScreenProfileFourState extends State<ScreenProfileFour> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        color: const Color(0xff1e2772),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            width: 528,
            height: 609,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 240,
                  height: 65,
                  child: Row(
                    /**
                       * 
                       * 
                       * I Care Logo 
                       * 
                       * 
                       */
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 5,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff159eec),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 5,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff1e2772),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 5,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff159eec),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 5,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff1e2772),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 5,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff159eec),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "I",
                        style: SafeGoogleFont("Yeseva One",
                            fontSize: 56,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff1f2b6c)),
                      ),
                      Text(
                        "CARE",
                        style: SafeGoogleFont("Yeseva One",
                            fontSize: 56,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff159eec)),
                      )
                    ],
                  ),
                ),
                Text(
                  "Select the appropriate options ",
                  style: SafeGoogleFont("Yeseva One",
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 2, 12, 18)),
                ),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.center,
                  width: 355.w,
                  animation: true,
                  lineHeight: 42.0,
                  animationDuration: 1200,
                  percent: 0.38,
                  barRadius: const Radius.circular(20),
                  backgroundColor: const Color(0xffF4F4F4),
                  progressColor: const Color(0xff159EEC),
                ),
                Positioned(
                  left: 557 * fem,
                  top: 503 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 26 * fem,
                      child: Text(
                        'Do you suffer from any of these diseases?',
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3999999364 * ffem / fem,
                          color: const Color(0xff090a16),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 400 * fem,
                  top: 560 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        12 * fem, 10.5 * fem, 0 * fem, 9.5 * fem),
                    width: 340 * fem,
                    height: 250 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffa2a2a6)),
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 300 * fem,
                          height: double.infinity,
                          child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CheckboxListTile(
                                title: Text(items[index]),
                                value: checked[index],
                                onChanged: (value) {
                                  setState(() {
                                    checked[index] = value!;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 154,
                  height: 41,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 116, 247),
                      borderRadius: BorderRadius.circular(11)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenProfileFive()),
                      );
                      //  Navigator.push( context, MaterialPageRoute(builder: (context) => const Quistwo()),);
                    },
                    child: Text(
                      "Continue",
                      style: SafeGoogleFont("Work Sans",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
