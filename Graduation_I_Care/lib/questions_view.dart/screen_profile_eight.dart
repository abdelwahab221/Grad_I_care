import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenOfProfileEight extends StatefulWidget {
  const ScreenOfProfileEight({super.key});

  @override
  State<ScreenOfProfileEight> createState() => _ScreenOfProfileEightState();
}

class _ScreenOfProfileEightState extends State<ScreenOfProfileEight> {
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
                  "Your account is now ready",
                  style: SafeGoogleFont("Work Sans",
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
                  percent: 1,
                  barRadius: const Radius.circular(20),
                  backgroundColor: const Color(0xffF4F4F4),
                  progressColor: const Color(0xff159EEC),
                ),
                Text(
                  "Thank you for patience",
                  style: SafeGoogleFont("Work Sans",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 2, 12, 18)),
                ),
                SizedBox(
                  width: 215,
                  height: 194,
                  child: Image.asset("assets/page-1/images/amicoquis.png"),
                ),
                Text(
                  "you can go to your profile now",
                  style: SafeGoogleFont("Work Sans",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 2, 12, 18)),
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
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      "Done",
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
