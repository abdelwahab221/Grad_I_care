// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_four.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_seven.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_six.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenProfileFive extends StatefulWidget {
  const ScreenProfileFive({Key? key}) : super(key: key);

  @override
  State<ScreenProfileFive> createState() => _ScreenProfileFourState();
}

List<String> items = ['A+', 'A-', 'B+', 'B-'];
List<bool> checked = List<bool>.filled(items.length, false);
var ftList = items.take(4);
List<String> items1 = ['O+', 'O-', 'AB+', 'AB-'];
List<bool> checked1 = List<bool>.filled(items.length, false);
int? selected;
int? selected1;

class _ScreenProfileFourState extends State<ScreenProfileFive> {
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Choose your blood type ",
                  style: SafeGoogleFont("Yeseva One",
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 2, 12, 18)),
                ),
                const SizedBox(
                  height: 20,
                ),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.center,
                  width: 355.w,
                  animation: true,
                  lineHeight: 42.0,
                  animationDuration: 1200,
                  percent: 0.57,
                  barRadius: const Radius.circular(20),
                  backgroundColor: const Color(0xffF4F4F4),
                  progressColor: const Color(0xff159EEC),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "What is your blood type? ",
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 22 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3999999364 * ffem / fem,
                    color: const Color(0xff090a16),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 160,
                        child: Wrap(
                          spacing: 2 * fem,
                          runSpacing: 2 * fem,
                          children: List.generate(
                            items.length,
                            (index) => CheckboxListTile(
                              title: Text(items[index]),
                              value: checked[index],
                              onChanged: (value) {
                                setState(() {
                                  if (value == true) {
                                    // Disable all other items
                                    selected = index;
                                    checked =
                                        checked.map((item) => false).toList();
                                    checked[index] = true;
                                  } else {
                                    selected = null;
                                    checked[index] = false;
                                  }
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.blue,
                              checkColor: Colors.white,
                              contentPadding: EdgeInsets.zero,
                              isThreeLine: false,
                              dense: true,
                              secondary: selected == index
                                  ? const Icon(Icons.check)
                                  : null,
                            ),
                          ).fold<List<Widget>>(
                            <Widget>[],
                            (previousValue, element) {
                              if (previousValue.isNotEmpty &&
                                  previousValue.length % 2 != 0) {
                                previousValue.add(SizedBox(width: 2 * fem));
                              }
                              previousValue.add(element);
                              return previousValue;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 160,
                        child: Wrap(
                          spacing: 2 * fem,
                          runSpacing: 2 * fem,
                          children: List.generate(
                            items1.length,
                            (index) => CheckboxListTile(
                              title: Text(items1[index]),
                              value: checked1[index],
                              onChanged: (value) {
                                setState(() {
                                  if (value == true) {
                                    // Disable all other items
                                    selected1 = index;
                                    checked1 =
                                        checked1.map((item) => false).toList();
                                    checked1[index] = true;
                                  } else {
                                    selected1 = null;
                                    checked1[index] = false;
                                  }
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.blue,
                              checkColor: Colors.white,
                              contentPadding: EdgeInsets.zero,
                              isThreeLine: false,
                              dense: true,
                              secondary: selected1 == index
                                  ? const Icon(Icons.check)
                                  : null,
                            ),
                          ).fold<List<Widget>>(
                            <Widget>[],
                            (previousValue, element) {
                              if (previousValue.isNotEmpty &&
                                  previousValue.length % 2 != 0) {
                                previousValue.add(SizedBox(width: 2 * fem));
                              }
                              previousValue.add(element);
                              return previousValue;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 154,
                  height: 41,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 116, 247),
                      borderRadius: BorderRadius.circular(11)),
                  child: MaterialButton(
                    onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => const quissix()),);
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
