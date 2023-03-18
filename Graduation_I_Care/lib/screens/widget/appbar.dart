import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBaar extends StatelessWidget {
  const AppBaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(150.w, 5.h, 100.w, 5.h),
            color: const Color(0xfffcfefe),
            height: 80.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        "I",
                        style: SafeGoogleFont("Yeseva One",
                            fontSize: 36.spMax,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff1f2b6c)),
                      ),
                      Text(
                        "CARE",
                        style: SafeGoogleFont("Yeseva One",
                            fontSize: 36.spMax,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff159eec)),
                      )
                    ],
                  ),
                ), //ICARE Logo

                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.phone_in_talk,
                                size: 45.r,
                                color: const Color(0xff1f2b6c),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EMERGENCY',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  '123',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff159eec),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.access_time_rounded,
                                size: 55.r,
                                color: const Color(0xff1f2b6c),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'WORK HOUR',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.spMax,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  '24H',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.spMax,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff159eec),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // end of first element
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 55.r,
                                color: const Color(0xff1f2b6c),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LOCATION',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.spMax,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  'Egypt',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16.spMax,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color: const Color(0xff159eec),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
