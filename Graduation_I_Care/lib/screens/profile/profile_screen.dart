import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/AddPatient.dart';
import 'package:flutter_application_1/screens/profile/animated.dart';
import 'package:flutter_application_1/screens/profile/bons.dart';
import 'package:flutter_application_1/screens/profile/image.dart';
import 'package:flutter_application_1/screens/profile/image_The%20prescriptions.dart';
import 'package:flutter_application_1/screens/profile/profiledepart.dart';
import 'package:flutter_application_1/screens/profile/row_one_of_diseas.dart';
import 'package:flutter_application_1/screens/profile/text_field.dart';
import 'package:flutter_application_1/screens/search_for_patient.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEditing = false;
  final _formKey = GlobalKey<FormState>();
  var NameController = TextEditingController();
  var DoctorDiagnosisController = TextEditingController();
  var IdController = TextEditingController();
  var DoctorController = TextEditingController();
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
              child: Column(
                children: [
                  //App Bar
                  Container(
                      //padding: const EdgeInsets.fromLTRB(144, 0, 150, 0),
                      height: 80.h,
                      color: const Color(0xff1f2b6c),
                      child: const HomeBar()),
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 420,
                        child: Opacity(
                          opacity: 0.5,
                          child: Image.asset(
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                              "assets/page-1/images/Rectangle.png"),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 186, top: 167),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home /Profile',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 2.88,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Profile',
                                  style: SafeGoogleFont(
                                    'Yeseva One',
                                    fontSize: 48,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff1f2b6c),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                /*

                        .
                        .
                        .
                        .
                        .
                        text button on the center
                        .
                        .
                        .
                        .
                        .
                        */
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchPatient()),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xff1f2b6c),
                                          ),
                                          width: 316,
                                          height: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Text(
                                                  'search for a patient',
                                                  style: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xfffcfcfc),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 4, left: 10),
                                                child: Image.asset(
                                                  "assets/page-1/images/group-175.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPatient()),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xff159eec),
                                          ),
                                          width: 316,
                                          height: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Text(
                                                  'Enter patient data',
                                                  style: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xfffcfcfc),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 10),
                                                child: Image.asset(
                                                  "assets/page-1/images/add.png",
                                                  width: 40,
                                                  height: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                              ]))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/page-1/images/back.png',
                            fit: BoxFit.cover,
                          )),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                              child: Container(
                                alignment: Alignment.topRight,
                                width: 400,
                                height: 600,
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Card(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          ' Full Name',
                                          textAlign: TextAlign.start,
                                          style: SafeGoogleFont(
                                            'Yeseva One',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            height: 1.155,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                        MyRectangle(),
                                        const SizedBox(height: 30),
                                        Text(
                                          ' Date Of Birth',
                                          textAlign: TextAlign.start,
                                          style: SafeGoogleFont(
                                            'Yeseva One',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            height: 1.155,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                        MyRectangle(),
                                        const SizedBox(height: 30),
                                        Text(
                                          ' Familey Number',
                                          style: SafeGoogleFont(
                                            'Yeseva One',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            height: 1.155,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                        MyRectangle(),
                                        const SizedBox(height: 30),
                                        Text(
                                          ' ID',
                                          style: SafeGoogleFont(
                                            'Yeseva One',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            height: 1.155,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                        MyRectangle(),
                                        const SizedBox(height: 30),
                                        Text(
                                          ' Address',
                                          style: SafeGoogleFont(
                                            'Yeseva One',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            height: 1.155,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                        MyRectangle(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            Container(
                              //  padding: EdgeInsets.all(150),
                              child: ImageUploadRectangle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 742.h,
                    child: Stack(children: [
                      Opacity(
                          opacity: 0.5,
                          child: Image.asset(
                            "assets/page-1/images/Rectangle 34.png",
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          )),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              // alwayscaringS7J (108:2417)
                              margin: const EdgeInsets.fromLTRB(0, 0, 2, 7),
                              child: Text(
                                'ALWAYS CARING',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2.88,
                                  color: const Color(0xff159eec),
                                ),
                              ),
                            ),
                            Text(
                              // specializationjMJ (108:2416)
                              'Specialization',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Yeseva One',
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff1f2b6c),
                              ),
                            ),
                            SizedBox(
                              width: 992.w,
                              height: 517.h,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        childAspectRatio: 1.6,
                                        crossAxisSpacing: 30,
                                        mainAxisSpacing: 30),
                                children: [
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/icon-urology.png",
                                        title: "Urology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/icon-dermatology.png",
                                        title: "Dermatology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/image-24.png",
                                        title: "Gynaecology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/removebg-preview-1.png",
                                        title: "Gastroenterology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/icon-oncology.png",
                                        title: "Oncology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/image-21.png",
                                        title: "Otorhinolaryngology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/rectangle-35.png",
                                        title: "Cardiovascular",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/image-23.png",
                                        title: "Ophthalmology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/image-22.png",
                                        title: "Renal Medicine",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        bons = true;
                                      });
                                    },
                                    onDoubleTap: () {
                                      setState(() {
                                        bons = false;
                                      });
                                    },
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/icon-bones.png",
                                        title: "Bones",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/icon-neurology.png",
                                        title: "Neurology",
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: SizedBox(
                                      width: 225.w,
                                      height: 162.h,
                                      child: const DepartmentCard(
                                        imagepath:
                                            "assets/page-1/images/images-removebg-preview-1.png",
                                        title: "Pulmonology",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            bons
                                ? IconButton(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    onPressed: () {
                                      setState(() {
                                        bons = false;
                                      });
                                    },
                                    icon: const Icon(Icons.keyboard_arrow_up),
                                    color: const Color(0xff1f2b6c),
                                    iconSize: 60.r,
                                  )
                                : const SizedBox(
                                    height: 1,
                                  )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  bons
                      ? Column(
                          children:const [
                             BonsDepartment(),
                            
                          ],
                        )
                      : const SizedBox(
                          width: double.infinity,
                          height: 3,
                        ),

                  const SizedBox(
                      width: double.infinity, height: 427, child: Footer())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
