import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/search_for_patient.dart';
import 'package:flutter_application_1/fonts/font.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 427.h,
        color: const Color(0xff1f2b6c),
        child: Padding(
          padding: EdgeInsets.only(
              left: 160.w, right: 120.w, top: 70.h, bottom: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240.w,
                    height: 110.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ICARE',
                          style: SafeGoogleFont(
                            'Yeseva One',
                            fontSize: 36.spMax,
                            fontWeight: FontWeight.w400,
                            height: 1.155.spMax,
                            color: const Color(0xffbed2f7),
                          ),
                        ),
                        Text(
                          'Leading the Way in Medical\nExecellence, Trusted Care.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                            //height: 1.3999999364.sp,
                            color: const Color(0xfffcfefe),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //45.pw,
                  SizedBox(
                    width: 240.w,
                    height: 169.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Important Links.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 18.spMax,
                            fontWeight: FontWeight.w400,
                            height: 1.3999999364.spMax,
                            color: const Color(0xfffcfefe),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'About Us',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.spMax,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Services ',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.spMax,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchPatient()),
                            );
                          },
                          child: Text(
                            'Search for penitent',
                            overflow: TextOverflow.ellipsis,
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.sp,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //45.pw,
                  SizedBox(
                    width: 240.w,
                    height: 169.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Contact Us ',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 17.spMax,
                            fontWeight: FontWeight.w400,
                            height: 1.3999999364.sp,
                            color: const Color(0xfffcfefe),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'call : 01275373116',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.sp,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Email : icare@gmail.com ',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.sp,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Address : \nEgypt - al sharqia',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3999999364.sp,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //40.pw,
              Divider(
                height: 10.h,
                color: const Color(0xfffcfefe),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30.r,
                      color: const Color(0xfffcfefe),
                    ),
                    Text(
                      "  Log out",
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18.spMax,
                        fontWeight: FontWeight.w400,
                        height: 1.3999999364.spMax,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                '© 2023 Icare All Rights Reserved by FCI-ZU ',
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 16.spMax,
                  fontWeight: FontWeight.w400,
                  height: 1.3999999762.spMax,
                  color: const Color(0xfffcfefe),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: toDouble().h,
      );
  SizedBox get pw => SizedBox(
        width: toDouble().w,
      );
}
 */