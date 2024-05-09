import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen2 extends StatefulWidget {
  const loginScreen2({super.key});

  @override
  State<loginScreen2> createState() => _loginScreen2State();
}

class _loginScreen2State extends State<loginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/login.png"))),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Welcome Back,\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' Make it work, make it right, make it fast.\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18))
              ]),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                hintText: "E-Mail",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Text(
              '\n                                    Forget Password?',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              height: 50,
              width: 350,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF212121),
                  borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '\n                             OR',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 22),
            ),
            Container(
              height: 60,
              width: 350,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.5),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text('Sign-In With Google',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
            ),
            RichText(text: TextSpan(children: [
              TextSpan(text: "\n            Don't have an Account?",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500)),
              TextSpan(text: ' Signup',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18))
            ]))
          ],
        ),
      ),
    );
  }
}
