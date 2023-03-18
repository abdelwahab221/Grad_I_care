import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/screens/Regstration/forget.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'sign.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SceneState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();
bool _passwordVisible = false;

class _SceneState extends State<LoginScreen> {
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
                                    'Login into your account',
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
                                      child: /*  TextFormField(
                                          obscureText: !_passwordVisible,

                                        controller: passwordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        onFieldSubmitted: (String value) {
                                          //
                                        },
                                        onChanged: (String value) {
                                          //
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';
                                          } else {
                                            if (value.length < 8) {
                                              return 'password is less than 8';
                                            }
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          labelText: 'Password',
                                          prefixIcon: Icon(
                                            Icons.lock,
                                          ),
                                           suffixIcon: IconButton(
                                          icon: Icon(
                                   _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.grey,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _passwordVisible = !_passwordVisible;
                                                });
                                              },
                                            ),
                                          border: OutlineInputBorder(),
                                        ),
                                      ), */
                                          TextFormField(
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
                                              color: Colors.grey,
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
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotScreen()));
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Text(
                                        'Forgot Password?',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          decoration: TextDecoration.underline,
                                          color: const Color(0xff212124),
                                          decorationColor:
                                              const Color(0xff212124),
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
                                  child: Center(
                                    child: Text(
                                      'Login Now',
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
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 133,
                                            height: 3,
                                            color: const Color.fromARGB(
                                                255, 202, 202, 202),
                                          ),
                                          Text(
                                            ' or continue with ',
                                            textAlign: TextAlign.start,
                                            style: SafeGoogleFont(
                                              'ABeeZee',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.bold,
                                              height: 1.1825 * ffem / fem,
                                              color: const Color(0xff747980),
                                            ),
                                          ),
                                          Container(
                                            width: 134.8,
                                            height: 3,
                                            color: const Color.fromARGB(
                                                255, 202, 202, 202),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: 72 * fem,
                                            height: 68 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/signup-5CR.png',
                                              width: 72 * fem,
                                              height: 68 * fem,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 36 * fem,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: 72 * fem,
                                            height: 68 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/signup.png',
                                              width: 72 * fem,
                                              height: 68 * fem,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don,t have an account? ',
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
                                                const SignUpScreen()),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Signup',
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
                            'assets/page-1/images/amicologinnnn.png',
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
