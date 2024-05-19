// registration form : name,surname,phone,gender(radio),hobby(checkbox),profile image.
// new page : ID Card

import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/utills/global_var.dart';

ImagePicker imagePicker = ImagePicker();
File? fileimage;

class idCard extends StatefulWidget {
  const idCard({super.key});

  @override
  State<idCard> createState() => _idCardState();
}

TextEditingController txtName = TextEditingController();
TextEditingController txtSurname = TextEditingController();
TextEditingController txtContact = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtId = TextEditingController();
TextEditingController txtDob = TextEditingController();
GlobalKey<FormState> FormKey = GlobalKey();

class _idCardState extends State<idCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: FormKey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Color(0xFF424242),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Color(0xFF717172),
                    alignment: Alignment.center,
                    child: Text(
                      'Fill All Items',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(top: 20, bottom: 20, left: 100),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: (fileimage == null)
                          ? null
                          : DecorationImage(
                              image: FileImage(fileimage!), fit: BoxFit.cover),
                    ),
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 100,
                            left: 100,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_box,
                                color: Colors.red,
                                size: 50,
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Row(
                                    children: [
                                      Column(
                                        children: [
                                          IconButton(
                                              onPressed: () async {
                                                XFile? ImagePath =
                                                    await imagePicker.pickImage(
                                                        source:
                                                            ImageSource.camera);
                                                setState(() {
                                                  fileimage =
                                                      File(ImagePath!.path);
                                                });
                                              },
                                              icon: Icon(
                                                Icons.camera_alt,
                                                color: Colors.white,
                                                size: 40,
                                              )),
                                          Text(
                                            'Camera',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          IconButton(
                                              onPressed: () async {
                                                XFile? ImagePath =
                                                    await imagePicker.pickImage(
                                                        source: ImageSource
                                                            .gallery);
                                                setState(() {
                                                  fileimage =
                                                      File(ImagePath!.path);
                                                });
                                              },
                                              icon: Icon(
                                                Icons.image,
                                                color: Colors.white,
                                                size: 40,
                                              )),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  action: SnackBarAction(
                                      label: 'Undo',
                                      textColor: Colors.white,
                                      onPressed: () {}),
                                ));
                              },
                            )),
                      ],
                    ),
                  ),
                  buildTextFormField(
                      type: TextInputType.name,
                      text: 'Your Name',
                      ctl: txtName),
                  buildTextFormField(
                      type: TextInputType.number,
                      text: 'Id Number',
                      ctl: txtId),
                  buildTextFormField(
                      type: TextInputType.number,
                      text: 'Phone Number',
                      ctl: txtContact),
                  buildTextFormField(
                      type: TextInputType.emailAddress,
                      text: 'Email Address',
                      ctl: txtEmail),
                  buildTextFormField(
                      type: TextInputType.number,
                      text: 'Your Date Of Birth',
                      ctl: txtDob),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    '\nGender*',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: RadioListTile(
                            value: 'male',
                            title: Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            activeColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            }),
                      ),
                      Flexible(
                        child: RadioListTile(
                            value: 'female',
                            title: Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            activeColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            }),
                      ),
                      Flexible(
                        child: RadioListTile(
                            value: 'other',
                            title: Text(
                              'Other',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            activeColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            }),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    '\nHobby :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                            value: reading,
                            checkColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            activeColor: Colors.white,
                            title: Text(
                              'Reading',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                reading = value!;
                              });
                            }),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                            value: dancing,
                            checkColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            activeColor: Colors.white,
                            title: Text(
                              'Dancing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                dancing = value!;
                              });
                            }),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                            value: sports,
                            checkColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            activeColor: Colors.white,
                            title: Text(
                              'Sports',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                sports = value!;
                              });
                            }),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 130,
                      ),
                      FilledButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF213771))),
                          onPressed: () {
                            bool response = FormKey.currentState!.validate();
                            if (response) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  " Gender: $gender\n Hobby: ${(dancing == false) ? '' : 'Dancing'} ${(reading == false) ? '' : ' Reading'} ${(sports == false) ? '' : ' Sports'}.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                action: SnackBarAction(
                                    label: 'Undo',
                                    textColor: Colors.white,
                                    onPressed: () {}),
                              ));
                              Timer(Duration(seconds: 1), () {
                                Email = txtEmail.text;
                                name = txtName.text;
                                contact = txtContact.text;
                                dob = txtDob.text;
                                id = txtId.text;
                                Navigator.of(context).pushNamed('/id');
                              });
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  "Fill all required fields.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                action: SnackBarAction(
                                    label: 'Undo',
                                    textColor: Colors.white,
                                    onPressed: () {}),
                              ));
                            }
                          },
                          child: Text('Submit')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildTextFormField(
      {TextInputType? type, String? text, TextEditingController? ctl}) {
    return Column(
      children: [
        TextFormField(
          controller: ctl,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.white),
          keyboardType: type,
          decoration: InputDecoration(
            hintText: 'Write  $text',
            hintStyle: TextStyle(
                color: Color(0xFFCBCBCB),
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return '';
            }
          },
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

String gender = 'Male';
bool reading = false;
bool dancing = false;
bool sports = false;
