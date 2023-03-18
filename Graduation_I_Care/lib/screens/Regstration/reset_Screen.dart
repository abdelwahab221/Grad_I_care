import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/screens/home_page.dart';


class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _SceneState();
}

var passwordController = TextEditingController();
var passwordController1 = TextEditingController();

class _SceneState extends State<ResetScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 768,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff000000)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            35 * fem, 15 * fem, 35 * fem, 10 * fem),
                        width: 480 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x19000000),
                              offset: Offset(0 * fem, 12 * fem),
                              blurRadius: 25 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  84 * fem, 0 * fem, 84 * fem, 50 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        12 * fem, 0 * fem, 8 * fem, 18 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 16 * fem, 10 * fem),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 5 * fem,
                                                height: 55 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16 * fem),
                                                  color:
                                                      const Color(0xff159eec),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6 * fem,
                                              ),
                                              Container(
                                                width: 5 * fem,
                                                height: 55 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16 * fem),
                                                  color:
                                                      const Color(0xff1e2772),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6 * fem,
                                              ),
                                              Container(
                                                width: 5 * fem,
                                                height: 55 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16 * fem),
                                                  color:
                                                      const Color(0xff159eec),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6 * fem,
                                              ),
                                              Container(
                                                width: 5 * fem,
                                                height: 55 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16 * fem),
                                                  color:
                                                      const Color(0xff1e2772),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6 * fem,
                                              ),
                                              Container(
                                                width: 5 * fem,
                                                height: 55 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16 * fem),
                                                  color:
                                                      const Color(0xff159eec),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: SafeGoogleFont(
                                              'Yeseva One',
                                              fontSize: 56 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.155 * ffem / fem,
                                              color: const Color(0xff1f2b6c),
                                            ),
                                            children: [
                                              const TextSpan(
                                                text: 'I',
                                              ),
                                              TextSpan(
                                                text: 'CARE',
                                                style: SafeGoogleFont(
                                                  'Yeseva One',
                                                  fontSize: 45 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.155 * ffem / fem,
                                                  color:
                                                      const Color(0xff159eec),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Forget Password',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff1f2b6c),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 50 * fem, 0 * fem, 23 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Create new Password',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color:
                                          const Color.fromARGB(207, 26, 26, 26),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Create new Password for your account',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color:
                                          const Color.fromARGB(153, 26, 26, 26),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: passwordController,
                                      onFieldSubmitted: (String value) {
                                        //
                                      },
                                      onChanged: (String value) {
                                        //
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'confirm your password';
                                        } else {
                                          if (value.length < 8) {
                                            return 'password is less than 8';
                                          }
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        labelText: 'New Password',
                                        prefixIcon: Icon(
                                          Icons.lock,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.remove_red_eye,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        19 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff1f3f6),
                                      borderRadius:
                                          BorderRadius.circular(8 * fem),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              width: double.infinity,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                      child: TextFormField(
                                        controller: passwordController1,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        onFieldSubmitted: (String value) {
                                          //
                                        },
                                        onChanged: (String value) {
                                          //
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'confirm your password';
                                          } else {
                                            if (value.length < 8) {
                                              return 'password is less than 8';
                                            }
                                            if (passwordController !=
                                                passwordController1) {
                                              return "password don't match";
                                            }
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          labelText: 'confirm Password',
                                          prefixIcon: Icon(
                                            Icons.lock,
                                          ),
                                          suffixIcon: Icon(
                                            Icons.remove_red_eye,
                                          ),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_circle,
                                          size: 15,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Password must be between 8 to 32 character.',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: const Color.fromARGB(
                                                134, 26, 26, 26),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_circle,
                                          size: 15,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Must contain a uppercase character.',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: const Color.fromARGB(
                                                153, 26, 26, 26),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_circle,
                                          size: 15,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Must contain a number.',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: const Color.fromARGB(
                                                111, 26, 26, 26),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 20 * fem, 0 * fem, 38.5 * fem),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    print(passwordController.text);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()),
                                    );
                                  }
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 50 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff1f2b6c),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3f000000),
                                        offset: Offset(0 * fem, 4 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Reset Password',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 1 * fem, 30 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: SizedBox(
                          width: 550,
                          height: 550,
                          child: Image.asset(
                            'assets/page-1/images/cuate.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
