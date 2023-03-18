import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/contactpage.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  "assets/page-1/images/Group 203Service.png",
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
                            " / Service",
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
                        "Our Service",
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 50.h),
              width: 992.w,
              height: 1124.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Using FingerPrint',
                          contanttext:
                              "Easy access to medical information And modify it by an official in a hospital affiliated to the Egyptian government",
                          imagepath: "assets/page-1/images/finger.jpg",
                          contanttext2:
                              '''When important decisions are to be made, the patient must receive detailed information on the illness,
  treatment options and prognosis. The shortening of hospital stays and the trend towards outpatient care 
  enhance the need of patients and their families for specific information.''',
                        ),
                      ),
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Add your illnesses',
                          contanttext:
                              "Easy access to medical information And modify it by an official in a hospital affiliated to the Egyptian government",
                          imagepath: "assets/page-1/images/service2.jpg",
                          contanttext2:
                              '''If small amounts of data from many patients are linked up and pooled,
                        researchers and doctors can look for patterns in the data,
 helping them develop new ways of predicting or diagnosing illness,
 and identify ways to improve clinical care. The information can be used to help:
 1 - understand more about disease risks and causes improve diagnosis
 2 - develop new treatments and prevent disease
 3 - plan NHS services improve patient safety 
 4 - evaluate government and NHS policy.''',
                        ),
                      ),
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Easy to access',
                          contanttext:
                              "Easy access to medical information And modify it by an official in a hospital affiliated to the Egyptian government",
                          imagepath: "assets/page-1/images/service6.jpg",
                          contanttext2:
                              '''Through our website, you can easily access and view your medical information and find out your medical details
 which were registered by an official in a government hospital..''',
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Add within sections',
                          contanttext:
                              "Through our website, you can easily amend and add to your medical information, and this is done under the auspices of one of the doctors that you visited and conduct medical examinations in the hospital to which you belong",
                          imagepath: "assets/page-1/images/service5.jpg",
                          contanttext2:
                              '''Through our website, you can easily amend and add to your medical information, and this is done under the auspices 
 of one of the doctors that you visited and conduct medical examinations in the hospital to which you belong.''',
                        ),
                      ),
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Easy to access',
                          contanttext:
                              "Easy access to medical information And modify it by an official in a hospital affiliated to the Egyptian government",
                          imagepath: "assets/page-1/images/sercive3.jpg",
                          contanttext2:
                              '''When important decisions are to be made, the patient must receive detailed information on the illness,
  treatment options and prognosis. The shortening of hospital stays and the trend towards outpatient care 
  enhance the need of patients and their families for specific information.''',
                        ),
                      ),
                      SizedBox(
                        width: 317.w,
                        height: 552.h,
                        child: const SerContainer(
                          titletext: 'Doctor takes note',
                          contanttext:
                              "We help the doctor to take a sufficient amount of medical information about the patient by looking at his medical record, and this is his role in making it easier for the doctor to make a better decision regarding the diagnosis of the patient's medical condition",
                          imagepath: "assets/page-1/images/service3.jpg",
                          contanttext2:
                              '''We help the doctor to take a sufficient amount of medical information about the patient 
  by looking at his medical record, and this is his role in making it easier for the doctor to make a better decision regarding
  the diagnosis of the patient's medical condition.''',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 64.h),
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
            Container(
              margin: EdgeInsets.only(top: 14.h, bottom: 30.h),
              child: Text(
                // ourdoctorsheg (I1:2143;1:1263)
                'Service',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Yeseva One',
                  fontSize: 32.spMax,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff1f2b6c),
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
            const SizedBox(width: double.infinity, height: 427, child: Footer())
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

class SerContainer extends StatelessWidget {
  const SerContainer(
      {super.key,
      this.titletext,
      this.contanttext,
      this.imagepath,
      this.contanttext2});

  final String? titletext;
  final String? contanttext;
  final String? imagepath;
  final String? contanttext2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shadowColor: const Color(0xff1f2b6c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                title: Text(
                  titletext!,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 26.spMax,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.w,
                    color: const Color(0xff1f2b6c),
                  ),
                ),
                content: Text(
                  contanttext2!,
                  //maxLines: 3,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(33, 33, 36, 1),
                  ),
                ),
              );
            });
      },
      child: SizedBox(
        width: 317.w,
        height: 552.h,
        child: Card(
          child: Stack(children: [
            Image.asset(
              imagepath!,
              width: 317.w,
              height: 300.h,
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* Image.asset(
                      imagepath!,
                      width: 317.w,
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ), */
                  //EmptyPadding(56).ph,
                  Text(
                    titletext!,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 26.spMax,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.w,
                      color: const Color(0xff1f2b6c),
                    ),
                  ),
                  EmptyPadding(8).ph,
                  Text(
                    contanttext!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 36, 1),
                    ),
                  ),
                  EmptyPadding(40).ph,
                  Row(
                    children: [
                      Text(
                        'Learn More',
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16.spMax,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.w,
                          color: const Color(0xff159eec),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Color(0xff1f2b6c),
                      )
                    ],
                  ),
                  EmptyPadding(25).ph,
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15.w),
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                  backgroundColor: const Color(0xff1f2b6c),
                  radius: 30.r,
                  child: Icon(
                    Icons.medical_information,
                    size: 35.r,
                    color: const Color.fromARGB(255, 189, 212, 243),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
