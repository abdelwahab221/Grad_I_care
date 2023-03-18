import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTeams extends StatefulWidget {
  const OurTeams({super.key});

  @override
  State<OurTeams> createState() => _OurTeamsState();
}

bool abdelwahab = false;
bool alihgr = false;
bool abdelmonaem = false;
bool omnia = false;
bool alisharaf = false;
bool eslam = false;
bool mahmoud = false;
bool soaad = false;

class _OurTeamsState extends State<OurTeams> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 450.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              MyTeamWidget(
                boolname: abdelwahab,
                teamimage: "assets/page-1/images/abdelwahab.jpeg",
                teamname: "Abdelwahab Mahmoud",
                jobname: " Flutter Dev </> ",
              ),
              const SizedBox(
                width: 30,
              ),
              MyTeamWidget(
                boolname: alihgr,
                teamimage: "assets/page-1/images/ali.jpg",
                teamname: "Ali Mohammed",
                jobname: " Flutter Dev </> ",
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ));
  }
}

// ignore: must_be_immutable
class MyTeamWidget extends StatefulWidget {
  MyTeamWidget(
      {super.key, this.boolname, this.teamimage, this.teamname, this.jobname});
  bool? boolname;
  final String? teamimage;
  final String? teamname;
  final String? jobname;

  @override
  State<MyTeamWidget> createState() => _MyTeamWidgetState();
}

class _MyTeamWidgetState extends State<MyTeamWidget> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          widget.boolname = true;
        });
      },
      onExit: (event) {
        setState(() {
          widget.boolname = false;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: widget.boolname!
                  ? const Color(0xff1f2b6c)
                  : const Color(0xff159eec),
              blurRadius: widget.boolname! ? 5 : 1,
              spreadRadius: widget.boolname! ? 10 : 1)
        ]),
        duration: const Duration(milliseconds: 200),
        width: widget.boolname! ? 250 : 150,
        height: widget.boolname! ? 400 : 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                widget.teamimage!,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              Text(
                widget.teamname!,
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Yeseva One',
                  fontSize: 18.sp,
                  height: 1.5.h,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff1f2b6c),
                ),
              ),
              Text(
                widget.jobname!,
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 34, 35, 41),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
