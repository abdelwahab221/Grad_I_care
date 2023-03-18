import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/AddPatient.dart';
import 'package:flutter_application_1/screens/profile/image_The%20prescriptions.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  bool isTapped = true;
  bool isExpanded = false;
  bool isEditing = false;
  final _formKey = GlobalKey<FormState>();
  var NameController = TextEditingController();
  var DoctorDiagnosisController = TextEditingController();
  var IdController = TextEditingController();
  var DoctorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                onHighlightChanged: (value) {
                  setState(() {
                    isExpanded = value;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: isTapped
                      ? isExpanded
                          ? 65.h
                          : 70.h
                      : isExpanded
                          ? 750.h
                          : 750.h,
                  width: isExpanded ? 600.w : 900.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff1f2b6c),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff1f2b6c).withOpacity(0.5),
                        blurRadius: 20.r,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20.r),
                  child: isTapped
                      ? SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Click here to add record',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    isTapped
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27.r,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Click here to add record',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.spMax,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    isTapped
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27.r,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SingleChildScrollView(
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                bottom: BorderSide(
                                                    width: 0.7.w,
                                                    color: Colors.white),
                                                /* right: BorderSide(
                                    width: 0.7,
                                    color:
                                    Colors.white) */
                                              )),
                                              width: 245.w,
                                              height: 60.h,
                                              child: TextFormField(
                                                cursorColor: Colors.white,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),
                                                controller: NameController,
                                                onChanged: (String value) {},
                                                onFieldSubmitted:
                                                    (String value) {},
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Enter the Headline";
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 9),
                                                  hintText: "Headline",
                                                  hintStyle: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        245, 252, 254, 254),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 0.7.w,
                                                          color: Colors.white),
                                                      right: BorderSide(
                                                          width: 0.7.w,
                                                          color:
                                                              Colors.white))),
                                              width: 245.w,
                                              height: 60.h,
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.datetime,
                                                cursorColor: Colors.white,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),
                                                onChanged: (String value) {},
                                                onFieldSubmitted:
                                                    (String value) {},
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "select the date";
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 9),
                                                  hintText: "date",
                                                  hintStyle: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        245, 252, 254, 254),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 0.7.w,
                                                          color: Colors.white),
                                                      right: BorderSide(
                                                          width: 0.7.w,
                                                          color:
                                                              Colors.white))),
                                              width: 245.w,
                                              height: 60.h,
                                              child: TextFormField(
                                                cursorColor: Colors.white,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),
                                                controller: DoctorController,
                                                onChanged: (String value) {},
                                                onFieldSubmitted:
                                                    (String value) {},
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Enter the Docto's name";
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 9.w),
                                                  hintText: "Doctor's name ",
                                                  hintStyle: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        245, 252, 254, 254),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 0.7,
                                                          color: Colors.white),
                                                      right: BorderSide(
                                                          width: 0.7,
                                                          color:
                                                              Colors.white))),
                                              width: 245.w,
                                              height: 140.h,
                                              child: TextFormField(
                                                cursorColor: Colors.white,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),
                                                controller:
                                                    DoctorDiagnosisController,
                                                onChanged: (String value) {},
                                                onFieldSubmitted:
                                                    (String value) {},
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Enter the Docto's Diagnosis";
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 9),
                                                  hintText:
                                                      "Docto's Diagnosis ",
                                                  hintStyle: SafeGoogleFont(
                                                    'Work Sans',
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        245, 252, 254, 254),
                                                  ),
                                                ),
                                                maxLines: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Column(
                                        children: [
                                          Text('Pictures',
                                              style: TextStyle(
                                                  fontSize: 32.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          SingleChildScrollView(
                                            // scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: const [
                                                prescriptions(),
                                                Spacer(),
                                                prescriptions(),
                                                Spacer(),
                                                prescriptions(),
                                                Spacer(),
                                                prescriptions(),
                                                Spacer(),
                                                prescriptions(),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50.h,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xffBFD2F8),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 25.h)),
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  print(NameController.text);
                                                  print(IdController.text);
                                                  print(DoctorController.text);
                                                  print(departmentController
                                                      .text);
                                                }
                                              },
                                              child: Text(
                                                'SAVE',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff1f2b6c),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
