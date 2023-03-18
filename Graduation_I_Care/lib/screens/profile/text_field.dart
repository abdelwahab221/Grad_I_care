import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRectangle extends StatefulWidget {
  @override
  _MyRectangleState createState() => _MyRectangleState();
}

class _MyRectangleState extends State<MyRectangle> {
  bool _isEditable = false;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 31, 43, 108),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              //  style: TextStyle(color: Color( 0xFF1F2B6C),),
              controller: _textEditingController,
              enabled: _isEditable,
              style: SafeGoogleFont(
                'Work Sans',
                fontSize: 17.spMax,
                fontWeight: FontWeight.w400,
                //height: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'Enter text here',
                hintStyle: TextStyle(
                  color: Color.fromARGB(235, 255, 255, 255),
                ),
                border: InputBorder.none,
                /*  filled: true, */
                // fillColor: Color( 0xFF1F2B6C),
              ),
            ),
          ),
          IconButton(
            //style: IconButton.styleFrom(backgroundColor: Colors.grey),
            color: Colors.white,
            icon: Icon(
                _isEditable ? Icons.check_circle_rounded : Icons.edit_outlined),
            onPressed: () {
              setState(() {
                _isEditable = !_isEditable;
                if (!_isEditable) {
                  // Save changes to text field when edit mode is turned off
                  String newText = _textEditingController.text;
                  // Do something with newText, such as saving it to a database
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
