import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/page_view.dart';
import 'package:flutter_application_1/screens/Regstration/login_screen.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/widget/font.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SceneState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();
bool _passwordVisible = false;

class _SceneState extends State<SignUpScreen> {
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
                            41 * fem, 15 * fem, 20 * fem, 10 * fem),
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
                                  84 * fem, 0 * fem, 84 * fem, 25 * fem),
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
                                    'Signup your account',
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
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Fill the details bellow to submit register account.',
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3999999762 * ffem / fem,
                                  color: const Color(0xff8692a6),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 23 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: TextFormField(
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      onFieldSubmitted: (String value) {
                                        //
                                      },
                                      onChanged: (String value) {
                                        //
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your first name';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        labelText: 'First Name',
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
                                  0 * fem, 0 * fem, 0 * fem, 23 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: TextFormField(
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      onFieldSubmitted: (String value) {
                                        //
                                      },
                                      onChanged: (String value) {
                                        //
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your last name';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        labelText: 'Last Name',
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
                                  0 * fem, 0 * fem, 0 * fem, 23 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: TextFormField(
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      onFieldSubmitted: (String value) {
                                        //
                                      },
                                      onChanged: (String value) {
                                        //
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email address';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        labelText: 'Email Address',
                                        prefixIcon: Icon(
                                          Icons.email,
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
                                        obscureText: !_passwordVisible,
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.lock),
                                          hintText: 'Enter your password',
                                          hintStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                            ),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blue,
                                              width: 2,
                                            ),
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 4, horizontal: 3),
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              _passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: _passwordVisible
                                                  ? Colors.blue
                                                  : Colors.grey,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _passwordVisible =
                                                    !_passwordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 38.5 * fem),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    print(emailController.text);
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
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MyPageView()),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Submit',
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
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have account? ',
                                    style: SafeGoogleFont('Gilroy',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        color: const Color.fromARGB(
                                            255, 89, 89, 89)),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Login',
                                      style: SafeGoogleFont(
                                        'Gilroy',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2575 * ffem / fem,
                                        color: const Color.fromARGB(
                                            255, 33, 33, 36),
                                      ),
                                    ),
                                  ),
                                ],
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
                          width: 650,
                          height: 550,
                          child: Image.asset(
                            'assets/page-1/images/1signup.png',
                            fit: BoxFit.fill,
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
