import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile/animated.dart';
import 'package:flutter_application_1/screens/profile/bons.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDepartment extends StatefulWidget {
  const ProfileDepartment({super.key});

  @override
  State<ProfileDepartment> createState() => _ProfileDepartmentState();
}

bool bons = false;

class _ProfileDepartmentState extends State<ProfileDepartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      bons? IconButton(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                onPressed: () {
                  setState(() {
                    bons = false;
                  });
                },
                icon: const Icon(Icons.keyboard_arrow_up),
                color: const Color(0xff1f2b6c),
                iconSize: 60.r,
              ): const SizedBox(height: 1,)
                    ],
                  ),
                ),
              ]),
            ),
            bons
                ? SizedBox(
                    width: double.infinity,
                    height: 1071.h,
                    child:
                     const BonsDepartment(),
                  )
                : const SizedBox(
                    width: double.infinity,
                    height: 3,
                  )
          ],
        ),
      ),
    );
  }
}
