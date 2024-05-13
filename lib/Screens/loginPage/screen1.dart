import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginscreen1 extends StatefulWidget {
  const Loginscreen1({super.key});

  @override
  State<Loginscreen1> createState() => _Loginscreen1State();
}

class _Loginscreen1State extends State<Loginscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffde301),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 600,
            width: double.infinity,
            alignment: Alignment.center,
            child: Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.only(top: 80,right: 35),
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/login.png")),
              ),
            ),
          ),
          Text("Build Awesome Apps",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          Text(
              "  Let's put your creativity on the\n        devlopment highway.\n\n",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
          Row(
            children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/login2');
              },
              child: Container(
                height: 50,
                width: 170,
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(5)
                ),
                alignment: Alignment.center,
                child: Text("LOGIN",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),Container(
              height: 50,
              width: 170,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(5)
              ),
              alignment: Alignment.center,
              child: Text("SIGNUP",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],)
        ],
      ),
    );
  }
}
