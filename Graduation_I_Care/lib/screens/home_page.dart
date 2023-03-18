import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addpatient.dart';
import 'package:flutter_application_1/screens/contactpage.dart';
import 'package:flutter_application_1/screens/savedSuccessfully.dart';
import 'package:flutter_application_1/screens/search_for_patient.dart';
import 'package:flutter_application_1/screens/widget/addpateintstack.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:flutter_application_1/screens/widget/homeBar.dart';
import 'package:flutter_application_1/fonts/font.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
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
  ' pulmonology ',
  ' ophthalmology ',
  ' gastroenterology ',
  ' dermatology ',
];

var NameController = TextEditingController();
var IdController = TextEditingController();
var DoctorController = TextEditingController();
var departmentController = TextEditingController();
var HospitalController = TextEditingController();

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
                  //App Bar
                  Container(
                    //padding: const EdgeInsets.fromLTRB(144, 0, 150, 0),
                    height: 80,
                    color: const Color(0xff1f2b6c),
                    child: const HomeBar(),
                  ), //app bar
                  //************************************************************
                  //*
                  //*
                  //*
                  //*
                  //the main body
                  //
                  //
                  //
                  //
                  //**************************************************** */
                  Stack(children: [
                    SizedBox(
                      width: double.infinity,
                      height: 550,
                      child: Image.asset(
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                          "assets/page-1/images/rectangle-20-RxR.png"),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 186, top: 167),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARING FOR LIFE',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.88,
                              color: const Color(0xff159eec),
                            ),
                          ),
                          Text(
                            'Leading the Way\nin ICARE Excellence',
                            style: SafeGoogleFont(
                              'Yeseva One',
                              fontSize: 48,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1f2b6c),
                            ),
                          ),
                          Container(
                            // button7PN (1:2067)
                            margin: const EdgeInsets.only(left: 1, top: 32),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 170,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: const Color(0xffbed2f7),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'Our Services',
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff1f2b6c),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 117,
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
                                      borderRadius: BorderRadius.circular(10),
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
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'search for a patient',
                                            style: SafeGoogleFont(
                                              'Work Sans',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xfffcfcfc),
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
                                      borderRadius: BorderRadius.circular(10),
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
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'Enter patient data',
                                            style: SafeGoogleFont(
                                              'Work Sans',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xfffcfcfc),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, left: 10),
                                          child: Image.asset(
                                            "assets/page-1/images/add.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                          const SizedBox(
                            height: 64,
                          ),
                        ],
                      ),
                    ),
                    /*
                    
                    
                
                
                    first text in the home 
                
                
                
                
                
                    */
                  ]),
                  Container(
                    margin: const EdgeInsets.fromLTRB(354, 15, 354, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WELCOME TO I CARE',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.88,
                            color: const Color(0xff159eec),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'A Great Place to Receive Care',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Yeseva One',
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff1f2b6c),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Here is where safety and trust, with us at iCare, you can easily keep your sick record as well as display it in front of the doctor and the hospital with flexibility, and you can reach your family and your address in emergency cases, as well as you can know the nearest hospital and the nearest clinic for each specialty, and also you can inform the ambulance to come to you in emergency cases with a click One button safe and smart',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 21, 21, 23),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 129,
                    height: 22,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Learn More',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff159eec),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 992,
                    height: 250,
                    child: Image.asset(
                      "assets/page-1/images/frame-2.png.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),

                  Text(
                    'CARE YOU CAN BELIEVE IN',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.88,
                      color: const Color(0xff159eec),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Our Services',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Yeseva One',
                      fontSize: 32,
                      letterSpacing: 2.88,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff1f2b6c),
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                    width: 990,
                    height: 550,
                    //margin: EdgeInsets.only(left: 190, right: 190),
                    child: Row(
                      /*
                      .
                      .
                      .
                      .
                      .
                      .
                      the main row of our service
                      .
                      .
                      .
                      .
                      .
                      */
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 650,
                          height: 515,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Your medical record will never be lost or forgotten',
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Add your illnesses',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Add within sections',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'The doctor takes note',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Easy to access',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'The doctor takes note',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    width: 230,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: const Color(0xff159eec),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'clear display',
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 62,
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'As a user, you can add what you suffer from previous diseases and classify them within the medical sections, and add the types of medications used as well as your allergies, while adding your weight and height periodically, but your information will remain uncertain until the doctor confirms it and it will appear with a blue mark, and the doctor and hospital can add information about you and your diseases Writing notes and amending what you wrote previously, all of this helps you in emergencies and others, to facilitate access to your medical file, through your name, phone number, national number, or even your fingerprint.',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff202124),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 270,
                              height: 250,
                              child: Image.asset(
                                  "assets/page-1/images/Group 186.png"),
                            ),
                            SizedBox(
                              width: 270,
                              height: 250,
                              child: Image.asset(
                                  "assets/page-1/images/Group 187.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  /*
                  .
                  .
                  .
                  our service container
                  .
                  .
                  .
                  */
                  Container(
                    // group23752 (108:2415)
                    margin: const EdgeInsets.fromLTRB(382, 0, 381, 63),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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

                        /*
                        container of
                        our specialization service
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
                        --------------------------
      
                         */
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 420,
                    margin: const EdgeInsets.only(right: 185, left: 185),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/icon-neurology.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Neurology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/icon-bones.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Bones',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/icon-oncology.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Oncology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/image-21.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Otorhinolaryngology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/image-23.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Ophthalmology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/rectangle-35.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Cardiovascular',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/images-removebg-preview-1.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Pulmonology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/image-22.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Renal Medicine',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/removebg-preview-1.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Gastroenterology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/icon-urology.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Urology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/icon-dermatology.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Dermatology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: SizedBox(
                                width: 150,
                                height: 85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/page-1/images/image-24.png",
                                      fit: BoxFit.contain,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      'Gynaecology',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4b4d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  /*
                              -
                              -
                              -
                              -
                              -
                              enter pateint data
                              -
                              -
                              -
                              -
                               */
                  SizedBox(
                    width: double.infinity,
                    height: 573,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            "assets/page-1/images/rectangle-33-bg.png",
                            fit: BoxFit.fitWidth,
                            color: Colors.white.withOpacity(0.2),
                            colorBlendMode: BlendMode.modulate,
                          ),
                        ),
                        const SizedBox(
                            width: double.infinity,
                            height: 573,
                            child: AddStack()),
                        //add stack
                        /*  Container(
                          height: 573,
                          width: double.infinity,
                          margin: const EdgeInsets.only(right: 189, left: 189),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // addpatientdatavHv (1:2137)
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: Text(
                                      'Add patient data',
                                      style: SafeGoogleFont(
                                        'Yeseva One',
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff159eec),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // loremipsumdolorsitametconsecte (1:2138)
                                    constraints: const BoxConstraints(
                                      maxWidth: 407,
                                    ),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat scelerisque tortor ornare ornare. Convallis felis vitae tortor augue. Velit nascetur proin massa in. Consequat faucibus porttitor enim et.',
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff202124),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 500,
                                height: 445,
                                color: const Color.fromARGB(255, 31, 43, 108),
                                child: Column(
                                  children: [
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
                                                        color: Colors.white))),
                                            width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
                                              ),
                                              controller: NameController,
                                              onChanged: (String value) {},
                                              onFieldSubmitted:
                                                  (String value) {},
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Enter the name";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 9),
                                                hintText: "Name",
                                                hintStyle: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      245, 252, 254, 254),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                            color: Colors.white,
                                            thickness: 4,
                                            height: 10),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white),
                                                    left: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white))),
                                            //width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
                                              ),
                                              controller: IdController,
                                              onChanged: (String value) {},
                                              onFieldSubmitted:
                                                  (String value) {},
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Enter the Id";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 9),
                                                hintText: "ID",
                                                hintStyle: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 15,
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
                                                        color: Colors.white))),
                                            width: 245,
                                            height: 50,
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                isExpanded: true,
                                                dropdownColor:
                                                    const Color.fromARGB(
                                                        255, 31, 43, 108),
                                                // Initial Value
                                                value: dropdownvalue,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),

                                                // Down Arrow Icon
                                                icon: const Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.white,
                                                ),

                                                // Array list of items
                                                items:
                                                    Gender.map((String items) {
                                                  return DropdownMenuItem(
                                                    value: items,
                                                    child: Text(items),
                                                  );
                                                }).toList(),
                                                // After selecting the desired option,it will
                                                // change button value to selected value
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownvalue = newValue!;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white),
                                                    left: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white))),
                                            //width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
                                              ),
                                              onChanged: (String value) {},
                                              onFieldSubmitted:
                                                  (String value) {},
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Enter the phone";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 9),
                                                hintText: "phone",
                                                hintStyle: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 15,
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
                                                        color: Colors.white))),
                                            width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.datetime,
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
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
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      245, 252, 254, 254),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white),
                                                    left: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white))),
                                            //width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
                                              ),
                                              onChanged: (String value) {},
                                              onFieldSubmitted:
                                                  (String value) {},
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Enter the Hospital name";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 9),
                                                hintText: "Hospial",
                                                hintStyle: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 15,
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
                                                        color: Colors.white))),
                                            width: 245,
                                            height: 50,
                                            child: TextFormField(
                                              cursorColor: Colors.white,
                                              style: SafeGoogleFont(
                                                'Work Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xfffcfefe),
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
                                                    const EdgeInsets.only(
                                                        left: 9),
                                                hintText: "Doctor",
                                                hintStyle: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      245, 252, 254, 254),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                            color: Colors.white,
                                            thickness: 4,
                                            height: 10),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white),
                                                    right: BorderSide(
                                                        width: 0.7,
                                                        color: Colors.white))),
                                            width: 245,
                                            height: 50,
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                isExpanded: true,
                                                dropdownColor:
                                                    const Color.fromARGB(
                                                        255, 31, 43, 108),
                                                // Initial Value
                                                value: departmentname.first,
                                                style: SafeGoogleFont(
                                                  'Work Sans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xfffcfefe),
                                                ),

                                                // Down Arrow Icon
                                                icon: const Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.white,
                                                ),

                                                // Array list of items
                                                items: departmentname
                                                    .map((String items) {
                                                  return DropdownMenuItem(
                                                    value: items,
                                                    child: Text(items),
                                                  );
                                                }).toList(),
                                                // After selecting the desired option,it will
                                                // change button value to selected value
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownvalue = newValue!;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: 499,
                                      height: 190,
                                      child: TextField(
                                        maxLines: 10,
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfffcfefe),
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Doctor's diagnosis",
                                          //alignLabelWithHint: true,
                                          contentPadding:
                                              const EdgeInsets.only(left: 9),
                                          hintStyle: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromARGB(
                                                233, 252, 254, 254),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 500,
                                      color: const Color(0xffbed2f7),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SavedSuccessfully()),
                                          );
                                          if (_formKey.currentState!
                                              .validate()) {
                                            print(NameController.text);
                                            print(IdController.text);
                                            print(DoctorController.text);
                                            print(departmentController.text);
                                          }
                                        },
                                        child: Text(
                                          'SAVE',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Work Sans',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff1f2b6c),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              /**
                               * 
                               * 
                               * 
                               * end of patient data 
                               * 
                               * 
                               */
                            ],
                          ),
                        ), */
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 64),
                    child: Text(
                      'GET IN TOUCH',
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
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    child: Text(
                      // ourdoctorsheg (I1:2143;1:1263)
                      'Contact',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Yeseva One',
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1f2b6c),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 185, right: 185),
                    child: SizedBox(
                      width: double.infinity,
                      height: 235,
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
                  const SizedBox(
                    height: 64,
                  ),
                  const SizedBox(
                      width: double.infinity, height: 427, child: Footer())
                ],
              ), // the main column -----------------------------------------------------------
            )),
          ],
        ),
      ), // the main column contain appbar---------------------------------------------------
    );
  }

  void onPressedHome() {
    return;
  }
}
