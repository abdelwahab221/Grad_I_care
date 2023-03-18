import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_seven.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'screen_profile_eight.dart';

class quissix extends StatefulWidget {
  const quissix({super.key});

  @override
  State<quissix> createState() => _quissixState();
}

class _quissixState extends State<quissix> {
  @override
  Widget build(BuildContext context) {
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
                  "Fill in this data to continue ",
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
                  animationDuration: 1500,
                  percent: 0.69,
                  barRadius: const Radius.circular(20),
                  backgroundColor: const Color(0xffF4F4F4),
                  progressColor: const Color(0xff159EEC),
                ),
                SizedBox(
                  width: 422,
                  height: 208,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your address ",
                            style: SafeGoogleFont("Work Sans",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 2, 12, 18)),
                          ),
                          Text(
                            "To know your home in case of emergency",
                            style: SafeGoogleFont("Work Sans",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(196, 9, 10, 22)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 422,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 250, 249, 249),
                            boxShadow: const [
                              BoxShadow(color: Colors.black45, blurRadius: 1)
                            ]),
                        child: TextFormField(
                          style: SafeGoogleFont("Work Sans",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 2, 12, 18)),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Family Address ",
                            style: SafeGoogleFont("Work Sans",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 2, 12, 18)),
                          ),
                          Text(
                            "for emergency",
                            style: SafeGoogleFont("Work Sans",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(196, 9, 10, 22)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 422,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 250, 249, 249),
                            boxShadow: const [
                              BoxShadow(color: Colors.black45, blurRadius: 1)
                            ]),
                        child: TextFormField(
                          style: SafeGoogleFont("Work Sans",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 2, 12, 18)),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
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
                            builder: (context) => const ScreenOfProfileSeven()),
                      );
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
