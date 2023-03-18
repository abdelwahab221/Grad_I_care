import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/contactpage.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/screens/widget/our_teams.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

bool data = false;

class _AboutUsPageState extends State<AboutUsPage> {
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
            child: Column(children: [
              SizedBox(
                height: 80.h,
                width: double.infinity,
                child: const HomeBar(),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/page-1/images/aboutus.png",
                    fit: BoxFit.fitWidth,
                    height: 260.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    color: const Color.fromARGB(80, 255, 255, 255),
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
                height: 509.h,
                child: Row(
                  children: [
                    SizedBox(
                        width: 408.w,
                        height: 509.h,
                        child: Image.asset(
                            "assets/page-1/images/Rectangle 3abouttwo.png")),
                    EmptyPadding(20).pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'WELCOME TO ICARE',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 18.spMax,
                            fontWeight: FontWeight.w700,
                            height: 1.1725.h,
                            letterSpacing: 2.88.w,
                            color: const Color(0xff159eec),
                          ),
                        ),
                        Text(
                          'Best Care for Your\nGood Health',
                          style: SafeGoogleFont(
                            'Yeseva One',
                            fontSize: 48.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.155.h,
                            color: const Color(0xff1f2b6c),
                          ),
                        ),
                        SizedBox(
                          width: 481.w,
                          height: 107.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Rowofservice(
                                    textcontant: "A Passion for Healing",
                                  ),
                                  Rowofservice(
                                    textcontant: "5-Star Care",
                                  ),
                                  Rowofservice(
                                    textcontant: "Believe in Us",
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Rowofservice(
                                    textcontant: "A Passion for Healing",
                                  ),
                                  Rowofservice(
                                    textcontant: "5-Star Care",
                                  ),
                                  Rowofservice(
                                    textcontant: "Believe in Us",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque
placerat scelerisque tortor ornare ornare. Quisque placerat scelerisque
tortor ornare ornare Convallis felis vitae tortor augue. Velit nascetur
proin massa in. Consequat faucibus porttitor enim et.''',
                          maxLines: 4,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.3999999762.h,
                            color: const Color(0xff000000),
                          ),
                        ),
                        Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque
placerat scelerisque tortor ornare ornare. Quisque placerat scelerisque
tortor ornare ornare Convallis felis vitae tortor augue. Velit nascetur
proin massa in. Consequat faucibus porttitor enim et.''',
                          maxLines: 4,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.3999999762.h,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              EmptyPadding(60).ph,
              Container(
                width: double.infinity,
                height: 441.w,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 43, 108),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/page-1/images/Rectangle 53about3.png"),
                    opacity: .5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star_rounded,
                          color: Color(0xffBFD2F8),
                          size: 35,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Color(0xffBFD2F8),
                          size: 35,
                        ),
                      ],
                    ),
                    Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Quisque placerat scelerisque tortor ornare ornare.Quisque
placeratscelerisque felis vitae tortor augue. Velit nascetur
Consequat faucibus porttitor enim et.''',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.4.h,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                    const Text(
                      "_______________________",
                      style: TextStyle(color: Color(0xfffcfefe)),
                    ),
                    Text(
                      'Soaad Najeeb',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.4.h,
                        color: const Color(0xfffcfefe),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 25,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color(0xffBFD2F8),
                          size: 25,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: 600.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GET IN TOUCH\nOur Team Member',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 18.spMax,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3.w,
                          color: const Color(0xff1f2b6c),
                        ),
                      ),
                      const OurTeams(),
                    ],
                  )),

              Container(
                margin: EdgeInsets.only(top: 64.h, bottom: 30.h),
                child: Text(
                  'GET IN TOUCH',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 18.spMax,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.88.w,
                    color: const Color(0xff159eec),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 185.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 235.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Containerservice(
                        containercolor: Color(0xffbed2f7),
                        icoon: Icons.phone_in_talk_rounded,
                        fontcolor: Color(0xff1f2b6c),
                        text1: 'EMERGENCY',
                        text2: '123',
                        text3: '122',
                      ),
                      Containerservice(
                        containercolor: Color(0xff1f2b6c),
                        fontcolor: Color(0xffbed2f7),
                        icoon: Icons.location_on_outlined,
                        text1: "LOCATION",
                        text2: "Egypt",
                        text3: "Al-sharqiya",
                      ),
                      Containerservice(
                        containercolor: Color(0xffbed2f7),
                        fontcolor: Color(0xff1f2b6c),
                        icoon: Icons.email_outlined,
                        text1: "EMAIL",
                        text2: "icare@gmail.com",
                        text3: "01275373116",
                      ),
                      Containerservice(
                        containercolor: Color(0xffbed2f7),
                        fontcolor: Color(0xff1f2b6c),
                        icoon: Icons.access_time_rounded,
                        text1: 'WORKING HOURS',
                        text2: '24 H',
                        text3: '',
                      ),
                    ],
                  ),
                ),
              ),
              EmptyPadding(60).ph,
              const SizedBox(
                  width: double.infinity, height: 427, child: Footer())
              //ccccccc
            ]),
          ))
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

class Rowofservice extends StatelessWidget {
  const Rowofservice({super.key, this.textcontant});
  final String? textcontant;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: const Color(0xff159eec),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            textcontant!,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}
