import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class prescriptions extends StatefulWidget {
  const prescriptions({Key? key}) : super(key: key);

  @override
  State<prescriptions> createState() => _prescriptionsState();
}

class _prescriptionsState extends State<prescriptions> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        color: Colors.grey, // Add a grey color to the background
      ),
      child: Stack(
        children: <Widget>[
          if (_image == null)
             Container(
               alignment: Alignment.center,
              child: Text(
                  'No image selected.'),
            )
          else
            Image.file(
              _image!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: getImage,
            ),
          ),
        ],
      ),
    );
  }
}
