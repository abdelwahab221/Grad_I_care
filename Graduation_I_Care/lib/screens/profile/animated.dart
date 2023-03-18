import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepartmentCard extends StatefulWidget {
  const DepartmentCard({super.key, this.imagepath, this.title});
  final String? imagepath;
  final String? title;
  @override
  State<DepartmentCard> createState() => _DepartmentCardState();
}

Color cardcolor = const Color(0xff1f2b6c);
bool isHover = false;

class _DepartmentCardState extends State<DepartmentCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245.w,
      height: 172.h,
      child: MouseRegion(
        onEnter: (f) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (f) {
          setState(() {
            isHover = false;
          });
        },
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 0),
          color: isHover ? cardcolor : const Color.fromARGB(92, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.imagepath!,
                  fit: BoxFit.contain,
                  width: 60.w,
                  height: 60.h,
                ),
                Text(
                  widget.title!,
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: isHover
                        ? const Color.fromARGB(255, 176, 196, 236)
                        : const Color(0xff1f2b6c),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
