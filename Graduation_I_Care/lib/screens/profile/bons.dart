import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile/add_record.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BonsDepartment extends StatefulWidget {
  const BonsDepartment({super.key});

  @override
  State<BonsDepartment> createState() => _BonsDepartmentState();
}

DateTime _dateTime = DateTime.now();

class _BonsDepartmentState extends State<BonsDepartment> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1800.h,
      child: Stack(children: [
        Image.asset(
          "assets/page-1/images/diago.png",
          fit: BoxFit.fitWidth,
          height: 1800,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 992.w,
                height: 260.h,
                color: const Color(0xffBFD2F8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      // specializationjMJ (108:2416)
                      'Diagnosis',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Yeseva One',
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1f2b6c),
                      ),
                    ),
                    Text(
                      // specializationjMJ (108:2416)
                      'The patient suffers from a fracture of the pelvis, crack, fragility of the bones of the foot, etc',
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 360.h,
                width: 992.w,
                color: const Color(0xffBFD2F8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      // specializationjMJ (108:2416)
                      'Rays',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Yeseva One',
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1f2b6c),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 200.w,
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/page-1/images/ray.png",
                                width: 200.w,
                                height: 230.h,
                              ),
                              Text(
                                "${_dateTime.year} - ${_dateTime.month} - ${_dateTime.day}",
                                style: const TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200.w,
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/page-1/images/ray.png",
                                width: 200.w,
                                height: 230.h,
                              ),
                              Text(
                                "${_dateTime.year} - ${_dateTime.month} - ${_dateTime.day}",
                                style: const TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200.w,
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/page-1/images/ray.png",
                                width: 200.w,
                                height: 230.h,
                              ),
                              Text(
                                "${_dateTime.year} - ${_dateTime.month} - ${_dateTime.day}",
                                style: const TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 992.w,
                height: 420.h,
                color: const Color(0xffBFD2F8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      // specializationjMJ (108:2416)
                      'The prescriptions',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Yeseva One',
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1f2b6c),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: 300.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                            MyImageContainer(
                                imagesPath: "assets/page-1/images/ray.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  // color: Colors.teal,
                  height: 600.h,
                  width: double.infinity,
                  child: MyCustomWidget(),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class MyImageContainer extends StatelessWidget {
  const MyImageContainer({super.key, required this.imagesPath});
  final String imagesPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10.w,
        ),
        SizedBox(
          width: 200.w,
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagesPath,
                width: 200.w,
                height: 230.h,
              ),
              Text(
                "${_dateTime.year} - ${_dateTime.month} - ${_dateTime.day}",
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
      ],
    );
  }
}
