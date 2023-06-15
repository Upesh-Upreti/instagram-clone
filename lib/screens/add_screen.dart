import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  File? _selectedImage;
  Future<void> pickImage(ImageSource imageSource) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: imageSource);
      if (pickedImage == null) {
        return;
      }
      setState(() {
        _selectedImage = File(pickedImage!.path);
      });
    } on PlatformException catch (error) {
      print(error.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget imageContent = _selectedImage == null
        ? Text('Your Picked Image')
        : Image.file(
            _selectedImage!,
            fit: BoxFit.cover,
          );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: const Color.fromARGB(255, 230, 225, 225),
            child: Center(child: imageContent),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              pickImage(ImageSource.gallery);
            },
            color: Colors.cyanAccent,
            child: const Text(
              'Choose from gallery',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              pickImage(ImageSource.camera);
            },
            color: Colors.blueAccent,
            child: const Text(
              'Choose from camera',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
