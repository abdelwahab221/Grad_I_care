import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/AddPatient.dart';
import 'package:flutter_application_1/screens/widget/appbar.dart';
import 'package:flutter_application_1/screens/widget/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/fonts/font.dart';
import '../fonts/font.dart';
import 'package:flutter_application_1/screens/home_page.dart';

class SearchPatient extends StatefulWidget {
  const SearchPatient({super.key});

  @override
  State<SearchPatient> createState() => _SearchPatientState();
}

var IdController = TextEditingController();

class _SearchPatientState extends State<SearchPatient> {
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
                  Container(
                    padding: const EdgeInsets.fromLTRB(144, 0, 150, 0),
                    height: 80,
                    color: const Color(0xff1f2b6c),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          child: Text(
                            'Home',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              //height: 18,
                              color: const Color(0xffbed2f7),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'About us',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              //height: 18,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Services',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              //height: 18,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Doctors',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              //height: 18,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'News',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              //height: 18,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Contact',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              //height: 18,
                              color: const Color(0xfffcfefe),
                            ),
                          ),
                        ),
                        const SizedBox(width: 220),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffbed2f7),
                              borderRadius: BorderRadius.circular(20)),
                          width: 170,
                          height: 45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Profile',
                                  style: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    color:
                                        const Color.fromARGB(255, 31, 43, 108),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person_outline_rounded,
                                    color: Color.fromARGB(255, 31, 43, 108),
                                    size: 30,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1366,
                    height: 714,
                    //color: Color.fromARGB(255, 215, 215, 215),
                    child: Stack(fit: StackFit.expand, children: [
                      Image.asset(
                        "assets/page-1/images/rectangle-3.png",
                        fit: BoxFit.fill,
                        color: const Color.fromARGB(255, 206, 206, 206)
                            .withOpacity(0.6),
                        colorBlendMode: BlendMode.modulate,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 607,
                            height: 534,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 19, 141, 212),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(124, 0, 0, 0),
                                    offset: Offset(2, 4),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(9, 32, 9, 32),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: 582,
                                    height: 74,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 31, 43, 108),
                                        ),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Name :",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: 582,
                                    height: 74,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 31, 43, 108),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Enter the ID";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "ID :",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: 582,
                                    height: 74,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        //keyboardType: TextInputType.number,
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 31, 43, 108),
                                        ),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Phone :",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 132,
                                        height: 132,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 31, 43, 108),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    124, 0, 0, 0),
                                                offset: Offset(2, 4),
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                              )
                                            ]),
                                        child: MaterialButton(
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                print(IdController.text);
                                              }
                                            },
                                            child: const Icon(
                                              Icons.fingerprint,
                                              size: 110,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Container(
                                        width: 386,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 31, 43, 108),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    124, 0, 0, 0),
                                                offset: Offset(2, 4),
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                              )
                                            ]),
                                        child: MaterialButton(
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                print(IdController.text);
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Search  ",
                                                    style: SafeGoogleFont(
                                                      'Work Sans',
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                    )),
                                                const Icon(
                                                  Icons.search,
                                                  size: 25,
                                                  color: Colors.white,
                                                )
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                              "assets/page-1/images/amicosearchPatient.png")
                        ],
                      )
                    ]),
                  ),

                  /**
                       * 
                       * 
                       * this is the footer
                       * 
                       * 
                       * 
                       */
                  const SizedBox(
                      width: double.infinity, height: 427, child: Footer())
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
