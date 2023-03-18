import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/contactpage.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/profile/profile_screen.dart';
import 'package:flutter_application_1/screens/service.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBar extends StatefulWidget {
  const HomeBar({super.key});

  @override
  State<HomeBar> createState() => _HomeBarState();
}

bool isProfile = false;

class _HomeBarState extends State<HomeBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(150.w, 0.h, 120.w, 0.h),
        height: 80.h,
        color: const Color(0xff1f2b6c),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      'Home',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w600,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                  EmptyPadding(15).pw,
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'About us',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                  EmptyPadding(15).pw,
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServicePage()),
                      );
                    },
                    child: Text(
                      'Services',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                  EmptyPadding(15).pw,
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Doctors',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                  EmptyPadding(15).pw,
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'News',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                  EmptyPadding(15).pw,
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactPage()),
                      );
                    },
                    child: Text(
                      'Contact',
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        //height: 18,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //210.pw,
            Expanded(
              flex: 1,
              child: MouseRegion(
                onEnter: (event) {
                  setState(() {
                    isProfile = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    isProfile = false;
                  });
                },
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      );
                  },
                  splashColor: Colors.blue,
                  color: const Color(0xffbed2f7),
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile  ",
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: isProfile ? 25.spMax : 20.spMax,
                            fontWeight: FontWeight.w500,
                            //height: 18,
                            color: const Color.fromARGB(255, 31, 43, 108),
                          ),
                        ),
                        isProfile
                            ? Icon(
                                Icons.arrow_forward_ios,
                                color: const Color.fromARGB(255, 31, 43, 108),
                                size: 30.r,
                              )
                            : Icon(
                                Icons.person,
                                color: const Color.fromARGB(255, 31, 43, 108),
                                size: 30.r,
                              )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: toDouble().h,
      );
  SizedBox get pw => SizedBox(
        width: toDouble().w,
      );
}
