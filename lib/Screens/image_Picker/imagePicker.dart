import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class imagepicker extends StatefulWidget {
  const imagepicker({super.key});

  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Image Picker',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: (fileImage!=null?DecorationImage(image: FileImage(fileImage!),fit: BoxFit.cover):null),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () async {
                      XFile? imagePath = await imagePicker.pickImage(source: ImageSource.camera);
                      setState(() {
                        fileImage=File(imagePath!.path);
                      });
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: 50,
                    )),
                IconButton(
                    onPressed: () async {
                      XFile? imagePath = await imagePicker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        fileImage=File(imagePath!.path);
                      });
                    },
                    icon: Icon(
                      Icons.image,
                      size: 50,
                    )),
              ],
            ),
        Container(
            height: 40,
            width: 350,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Center(
              child: Text(
                'Upload me',
                style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}