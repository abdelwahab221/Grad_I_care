import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/screen_of_profile_two.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_three.dart';

class ScreenOfProfileOne extends StatefulWidget {
  const ScreenOfProfileOne({super.key});

  @override
  State<ScreenOfProfileOne> createState() => _ScreenOfProfileOneState();
}

class _ScreenOfProfileOneState extends State<ScreenOfProfileOne> {
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
                Positioned(
                  left: 515.5 * fem,
                  top: 435 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 405 * fem,
                      height: 61 * fem,
                      child: Text(
                        'Please answer some important questions',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 26 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xff1f2b6c),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 608 * fem,
                  top: 519 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 233 * fem,
                      height: 224 * fem,
                      child: Image.asset('assets/page-1/images/Form.png'),
                    ),
                  ),
                ),
                Positioned(
                  left: 641 * fem,
                  top: 775 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOfProfileThree()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 154 * fem,
                      height: 41 * fem,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10.6792135239 * fem),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff3c75f7),
                          borderRadius:
                              BorderRadius.circular(10.6792135239 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Start',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.1725 * ffem / fem,
                              color: const Color(0xfff7fbfe),
                            ),
                          ),
                        ),
                      ),
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
