import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widget/addpateintstack.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({super.key});

  @override
  State<AddPatient> createState() => _AddPatientState();
}

var dropdownvalue = ' Male ';
// List of items in our dropdown menu
var Gender = [
  ' Male ',
  ' Female ',
];

var Departments = ' Bones ';
// List of items in our dropdown menu
var departmentname = [
  ' Bones ',
  ' dental ',
  ' cardiology ',
  ' neurology ',
  ' oncology ',
  ' otorhinolaryngology ',
  ' renal medicine ',
];

var NameController = TextEditingController();
var IdController = TextEditingController();
var DoctorController = TextEditingController();
var departmentController = TextEditingController();
var HospitalController = TextEditingController();

class _AddPatientState extends State<AddPatient> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
              width: double.infinity,
              child: AppBaar(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: HomeBar(),
                    ),
                    SizedBox(
                        width: double.infinity, height: 573, child: AddStack()),
                    SizedBox(
                        width: double.infinity, height: 427, child: Footer())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
