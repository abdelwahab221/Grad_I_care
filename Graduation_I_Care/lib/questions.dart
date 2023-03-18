import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_view.dart/page_view.dart';

//import 'package:i_care/widgets/questions_view.dart/page_view.dart';

class ProfileScreenOne extends StatefulWidget {
  const ProfileScreenOne({super.key});

  @override
  State<ProfileScreenOne> createState() => _ProfileScreenOneState();
}

class _ProfileScreenOneState extends State<ProfileScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       color: const Color.fromARGB(255, 2, 30, 53),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const Dialog(
                    alignment: Alignment.center,
                    child:MyPageView(),
                  );
                },
              );
            },
            child: const Text('Please follow to answer some questions'),
          ),
        ),
      ),
    );
  }
  
}
