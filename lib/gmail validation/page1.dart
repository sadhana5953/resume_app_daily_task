import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utills/global_var.dart';
class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

TextEditingController txtEMAIL = TextEditingController();

GlobalKey<FormState> formkey = GlobalKey();

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2F7),
      body: Form(
        key: formkey,
        child: Center(
          child: Container(
            height: 300,
            width: 850,
            padding: EdgeInsets.symmetric(vertical: 25,horizontal: 22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Image(image: AssetImage("assets/images/icon.png"),width: 50,height: 50,),
                    Text(" Sign in",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500)),
                    Text("\n   Use your Google Account",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: 400,
                    height: 65,
                    margin: EdgeInsets.only(top: 35),
                    child: TextFormField(
                      controller: txtEMAIL,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black87,width: 2)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black87,width: 1)),
                        labelText: 'Email or phone',
                        labelStyle: TextStyle(color: Colors.grey.shade800,fontSize: 13,fontWeight: FontWeight.bold),
                      ),
                      validator: (value)
                      {
                        if(value!.isEmpty)
                          {
                            return 'Enter an email or phone number';
                          }
                        else if(!value.contains('@gmail.com'))
                          {
                            if(!value.contains('@'))
                              {
                                return 'Enter @';
                              }
                            else if(!value.contains('gmail.com'))
                              {
                                return 'enter gmail.com';
                              }
                            else
                              {
                                return 'enter @gmail.com';
                              }
                          }
                        else if(value.contains(' '))
                          {
                            return 'space is not allow';
                          }
                        else if(value != value.toLowerCase())
                          {
                            return 'Please enter only lowercase letters';
                          }
                      },
                    ),
                  ),
                  Text('\n  Forgot email?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: '\n\n  Not your computer? Use Guest mode to sign in privately. ',style: TextStyle(color: Colors.grey.shade700,fontSize: 12,fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Learn more\n\n\n',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12)),
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 200,),
                      Text("Create account           ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 11),),
                     GestureDetector(
                       onTap: (){
                         bool response = formkey.currentState!.validate();
                         if(response)
                         {
                           Navigator.of(context).pushNamed('/gmail2');
                           email=txtEMAIL.text;
                         }
                       },
                       child: Container(height: 30,
                       width: 65,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                         color: Colors.blue.shade700,
                       ),
                       alignment: Alignment.center,
                       child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 11),),),
                     )
                     // ElevatedButton(onPressed: (){}, child: Text('Next',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                     //   backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade800), // Change background color here
                     //   minimumSize: MaterialStateProperty.all<Size>(Size(5, 40)), // Change background color here
                     // ),),
                    ],)
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
