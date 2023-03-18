import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadRectangle extends StatefulWidget {
  @override
  _ImageUploadRectangleState createState() => _ImageUploadRectangleState();
}

class _ImageUploadRectangleState extends State<ImageUploadRectangle> {
  File? _image;
  bool isEditing = false;
  List<TextField> textFields = [const TextField(), const TextField()];

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            color: Colors.grey, // Add a grey color to the background
          ),
          child: Stack(
            children: <Widget>[
              if (_image == null)
                const Center(
                  child: Text('No image selected.'),
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
                  icon: const Icon(Icons.add_a_photo),
                  onPressed: getImage,
                ),
              ),
            ],
          ),
        ),
        //const SizedBox(height: 20),
        // const Text('Name'),
        // const SizedBox(height: 10),
        Container(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter title',
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: isEditing,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Hypertension',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          },
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      enabled: isEditing,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Diabetes',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          },
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: isEditing,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Anemia',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          },
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      enabled: isEditing,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Blood :     O+',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          },
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: textFields.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Expanded(
                              child: textFields[index],
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  textFields.add(const TextField());
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  textFields.removeAt(index);
                                });
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
