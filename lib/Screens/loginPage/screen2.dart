import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen2 extends StatefulWidget {
  const loginScreen2({super.key});

  @override
  State<loginScreen2> createState() => _loginScreen2State();
}
TextEditingController txtEmail=TextEditingController();
TextEditingController txtpassword=TextEditingController();

class _loginScreen2State extends State<loginScreen2> {

  bool check=true;
  void _password()
  {
    setState(() {
       check= !check;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(right: 200,top: 5),
              decoration: BoxDecoration(

                image: DecorationImage(fit:BoxFit.cover,image: AssetImage("assets/images/login.png")),
              ),
            ),
            RichText(text: TextSpan(children: [
              TextSpan(text:"Welcome Back,\n",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold), ),
              TextSpan(text: 'Make it work, make it right, make it fast.             \n',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey.shade800),),
            ])),

            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.shade700)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.shade700)),
              prefixIcon: Icon(Icons.person_outline_outlined,color: Colors.grey.shade700,),
              hintText: 'E-Mail',
              hintStyle: TextStyle(color: Colors.grey.shade700),
            ),),
            SizedBox(height: 15,),
            TextField(
              controller: txtpassword,
              obscureText: check,
              decoration:
            InputDecoration(
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.shade700)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey.shade700)),
              prefixIcon: Icon(Icons.fingerprint_rounded,color: Colors.grey.shade700,),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey.shade700),
              suffixIcon: IconButton(onPressed: _password,icon: check? Icon(Icons.visibility_off_rounded):Icon(Icons.visibility_rounded)),
            ),),
            Text("\n                                                             Forget Password?\n",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius:  BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            Text("\nOR",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500,fontSize: 17),),
            Container(
              height: 50,
              width: 350,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade700,width: 2),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image(image: AssetImage("assets/images/icon.png"),height: 30,width: 30,),
                Text(" Sign-In With Google",style: TextStyle(fontWeight: FontWeight.bold),),
              ],),
            ),
            RichText(text: TextSpan(children: [
              TextSpan(text: "\n\nDon't have an Acoount? ",style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.bold)),
              TextSpan(text: "Signup",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
            ]))
          ],),
        ),
      ),
    );
  }
}