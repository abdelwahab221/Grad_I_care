import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

bool saved = true;

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
                child: const AppBaar(),
              ),
              SizedBox(
                height: 80.h,
                child: const HomeBar(),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/page-1/images/Rectangle 3contact.png",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    color: const Color.fromARGB(80, 255, 255, 255),
                  ),
                  Image.asset(
                    "assets/page-1/images/Group 203contact.png",
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150.w, top: 70.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                },
                                child: Text(
                                  'Home',
                                  style: SafeGoogleFont(
                                    'Yeseva One',
                                    fontSize: 16.spMax,
                                    fontWeight: FontWeight.w400,
                                    //      height: 25.h,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                )),
                            Text(
                              " / Contact",
                              style: SafeGoogleFont(
                                'Yeseva One',
                                fontSize: 16.spMax,
                                fontWeight: FontWeight.w400,
                                //height: 25.h,
                                color: const Color(0xff1f2b6c),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Our Contacts",
                          style: SafeGoogleFont(
                            'Yeseva One',
                            fontSize: 48.spMax,
                            fontWeight: FontWeight.w400,
                            //  height: 55.h,
                            color: const Color(0xff1f2b6c),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              EmptyPadding(60).ph,
              SizedBox(
                width: 992.w,
                height: 450.h,
                child: Image.asset(
                  "assets/page-1/images/Mapsicle Map.png",
                  fit: BoxFit.contain,
                ),
              ),
              EmptyPadding(64).ph,
              SizedBox(
                width: 1007.w,
                height: 495.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Textin(
                          text: "Get In Touch ",
                          fountsiz: 18,
                          fcolor: Color(0xff159eec),
                        ),
                        EmptyPadding(3).ph,
                        const Textin(
                          text: "Contact ",
                          fountsiz: 32,
                          fcolor: Color(0xff1f2b6c),
                        ),
                        EmptyPadding(32).ph,
                        Container(
                            width: 486.w,
                            height: 388.h,
                            color: const Color(0xff1f2b6c),
                            child: saved
                                ? Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(left: 10.w),
                                          hintText: "Name",
                                          hintStyle: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 16.spMax,
                                            fontWeight: FontWeight.w400,
                                            //height: 25.h,
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16.spMax,
                                          fontWeight: FontWeight.w400,
                                          //height: 25.h,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(left: 10.w),
                                          hintText: "Email",
                                          hintStyle: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 16.spMax,
                                            fontWeight: FontWeight.w400,
                                            //height: 25.h,
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16.spMax,
                                          fontWeight: FontWeight.w400,
                                          //height: 25.h,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 486.w,
                                        height: 200.h,
                                        child: Expanded(
                                          child: TextField(
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: null,
                                            expands: true,
                                            //maxLines: 12,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.w, top: 10.h),
                                              hintText: "Message",
                                              hintStyle: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16.spMax,
                                                fontWeight: FontWeight.w400,
                                                //height: 25.h,
                                                color: Colors.white,
                                              ),
                                            ),
                                            style: SafeGoogleFont(
                                              'Work Sans',
                                              fontSize: 16.spMax,
                                              fontWeight: FontWeight.w400,
                                              //height: 25.h,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: MaterialButton(
                                          splashColor: const Color(0xff1f2b6c),
                                          minWidth: double.infinity.w,
                                          height: 50.h,
                                          color: const Color.fromARGB(
                                              255, 191, 210, 248),
                                          onPressed: () {
                                            setState(() {
                                              saved = false;
                                            });
                                          },
                                          child: Text(
                                            "SUBMIT",
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Work Sans',
                                              fontSize: 16.spMax,
                                              fontWeight: FontWeight.w400,
                                              //height: 25.h,
                                              color: const Color(0xff1f2b6c),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Container(
                                        color: const Color(0xffbed2f7),
                                        width: 486.w,
                                        height: 326.h,
                                        child: Center(
                                          child: CircularPercentIndicator(
                                            radius: 110.0.r,
                                            animation: true,
                                            animationDuration:
                                                Duration.millisecondsPerSecond *
                                                    3,
                                            lineWidth: 40.0.w,
                                            percent: 1.0,
                                            center: Text(
                                              "Saved now ",
                                              style: TextStyle(
                                                color: const Color(0xff1f2b6c),
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                            progressColor:
                                                const Color(0xff1f2b6c),
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        splashColor: const Color(0xff1f2b6c),
                                        minWidth: double.infinity.w,
                                        height: 70.h,
                                        color: const Color(0xff1f2b6c),
                                        onPressed: () {
                                          setState(() {
                                            saved = true;
                                          });
                                        },
                                        child: Text(
                                          "BACK",
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 16.spMax,
                                            fontWeight: FontWeight.w400,
                                            //height: 25.h,
                                            color: const Color.fromARGB(
                                                255, 191, 210, 248),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                      ],
                    ),
                    EmptyPadding(35).pw,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Containerservice(
                              containercolor: Color(0xffbed2f7),
                              fontcolor: Color(0xff1f2b6c),
                              icoon: Icons.phone_in_talk_rounded,
                              text1: 'EMERGENCY',
                              text2: '123',
                              text3: '122',
                            ),
                            EmptyPadding(20).pw,
                            const Containerservice(
                              containercolor: Color(0xff1f2b6c),
                              fontcolor: Color(0xffbed2f7),
                              icoon: Icons.location_on_outlined,
                              text1: "LOCATION",
                              text2: "Egypt",
                              text3: "Al-sharqiya",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Containerservice(
                              containercolor: Color(0xffbed2f7),
                              fontcolor: Color(0xff1f2b6c),
                              icoon: Icons.access_time_rounded,
                              text1: 'WORKING HOURS',
                              text2: '24 H',
                              text3: '',
                            ),
                            EmptyPadding(20).pw,
                            const Containerservice(
                              containercolor: Color(0xffbed2f7),
                              fontcolor: Color(0xff1f2b6c),
                              icoon: Icons.email_outlined,
                              text1: "EMAIL",
                              text2: "icare@gmail.com",
                              text3: "01275373116",
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              EmptyPadding(60).ph,
              const SizedBox(
                  width: double.infinity, height: 427, child: Footer())
            ],
          ),
        ),
      ),
    );
  }
}

class Textin extends StatelessWidget {
  const Textin({
    super.key,
    this.text,
    this.fountsiz,
    this.fcolor,
  });
  final String? text;
  final double? fountsiz;
  final Color? fcolor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: SafeGoogleFont(
        'Yeseva One',
        fontSize: fountsiz!.spMax,
        fontWeight: FontWeight.w400,
        //height: 25.h,
        color: fcolor,
      ),
    );
  }
}

class Containerservice extends StatelessWidget {
  const Containerservice({
    super.key,
    this.text1,
    this.text2,
    this.text3,
    this.icoon,
    this.containercolor,
    this.fontcolor,
  });
  final String? text1;
  final String? text2;
  final String? text3;
  final IconData? icoon;
  final Color? containercolor;
  final Color? fontcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      decoration: BoxDecoration(
          color: containercolor, borderRadius: BorderRadius.circular(6.r)),
      width: 233.w,
      height: 233.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icoon!,
            size: 30.r,
            color: fontcolor,
          ),
          Text(
            text1!,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 18.sp,
              height: 1.5.h,
              fontWeight: FontWeight.w700,
              color: fontcolor,
            ),
          ),
          Text(
            text2!,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 18.sp,
              height: 1.5.h,
              fontWeight: FontWeight.w400,
              color: fontcolor,
            ),
          ),
          Text(
            text3!,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 18.sp,
              height: 1.5.h,
              fontWeight: FontWeight.w400,
              color: fontcolor,
            ),
          ),
        ],
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
