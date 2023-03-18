import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_application_1/questions_view.dart/screen_profile_three.dart';
import 'package:image_picker/image_picker.dart';


class ScreenOfProfileTwo extends StatefulWidget {
  const ScreenOfProfileTwo({Key? key}) : super(key: key);

  @override
  _ScreenOfProfileTwoState createState() => _ScreenOfProfileTwoState();
}

class _ScreenOfProfileTwoState extends State<ScreenOfProfileTwo> {
/*  File? _pickedImage;
  Uint8List webImage = Uint8List.fromList([]);
  Future<void> _pickImage() async {
  if (!kIsWeb) {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _pickedImage = File(image.path);
      });
    } else {
      print('No image has been picked');
    }
  } else if (kIsWeb) {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      setState(() {
        webImage = f;
      });
    } else {
      print('No image has been picked');
    }
  } else {
    print('Something went wrong');
  }
}*/
  XFile? image;

  final ImagePicker picker = ImagePicker();
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
        width: double.infinity,
        height: 1080 * fem,
        decoration: const BoxDecoration(
          color: Color(0x7f000000),
        ),
        child: Stack(children: [
          Positioned(
            left: 454 * fem,
            top: 245 * fem,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(37 * fem, 61 * fem, 37 * fem, 61 * fem),
              width: 528 * fem,
              height: 609 * fem,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 43 * fem,
                  height: 33 * fem,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 411 * fem, 454 * fem),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: const Icon(Icons.arrow_back_ios)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 515.5 * fem,
            top: 390 * fem,
            child: Align(
              child: SizedBox(
                width: 405 * fem,
                height: 61 * fem,
                child: Text(
                  'upload a picture to continue ',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 26 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.1725 * ffem / fem,
                    color: const Color(0xff1f2b6c),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Positioned(
            left: 608 * fem,
            top: 306 * fem,
            child: SizedBox(
              width: 350 * fem,
              height: 80 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 16 * fem, 10 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 5 * fem,
                          height: 55 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16 * fem),
                            color: const Color(0xff159eec),
                          ),
                        ),
                        SizedBox(
                          width: 6 * fem,
                        ),
                        Container(
                          width: 5 * fem,
                          height: 55 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16 * fem),
                            color: const Color(0xff1e2772),
                          ),
                        ),
                        SizedBox(
                          width: 6 * fem,
                        ),
                        Container(
                          width: 5 * fem,
                          height: 55 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16 * fem),
                            color: const Color(0xff159eec),
                          ),
                        ),
                        SizedBox(
                          width: 6 * fem,
                        ),
                        Container(
                          width: 5 * fem,
                          height: 55 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16 * fem),
                            color: const Color(0xff1e2772),
                          ),
                        ),
                        SizedBox(
                          width: 6 * fem,
                        ),
                        Container(
                          width: 5 * fem,
                          height: 55 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16 * fem),
                            color: const Color(0xff159eec),
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
                            fontSize: 50 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.155 * ffem / fem,
                            color: const Color(0xff159eec),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              // component4RWV (573:5828)
              left: 552 * fem,
              top: 433 * fem,
              child: SizedBox(
                width: 331.86 * fem,
                height: 258 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 64.37 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffb3b3b3),
                        borderRadius:
                            BorderRadius.circular(171.0606079102 * fem),
                      ),
                      child: Center(
                        child: SizedBox(
                            width: 331.86 * fem,
                            height: 37.63 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.black12, //add it here
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          6 * fem, 0 * fem, 6.86 * fem, 0 * fem),
                      width: double.infinity,
                      height: 156 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse1Yd3 (I573:5828;573:5802;438:7743)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 23 * fem, 0 * fem),
                            width: 165 * fem,
                            height: 156 * fem,
                            child: Image.asset(
                              "assets/Ellipse_1photo.png",
                              width: 165 * fem,
                              height: 156 * fem,
                            ),
                          ),
                          Container(
                            // autogroup4ckzqMF (FW5VvvFjyrU1qfiscJ4CKz)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 32 * fem, 0 * fem, 47 * fem),
                            width: 131 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        myAlert();
                                      },
                                      child: Text(
                                        'Upload picture',
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3999999364 * ffem / fem,
                                          color: const Color(0xff090a16),
                                        ),
                                      )),

                                  //if image not null show the image
                                  //if image null show text
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 11 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(51 * fem,
                                      11 * fem, 51.95 * fem, 10 * fem),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff159eec),
                                    borderRadius:
                                        BorderRadius.circular(15 * fem),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 17.05 * fem,
                                      height: 18 * fem,
                                      child: image != null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.file(
                                                  //to show image, you type like this.
                                                  File(image!.path),
                                                  fit: BoxFit.cover,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 300,
                                                ),
                                              ),
                                            )
                                          : const Text(
                                              "No Image",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 25,
          ),
          Positioned(
            left: 641 * fem,
            top: 775 * fem,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 154 * fem,
                height: 41 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.6792135239 * fem),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOfProfileThree()),
                      );
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff3c75f7),
                      borderRadius: BorderRadius.circular(10.6792135239 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xfff7fbfe),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
