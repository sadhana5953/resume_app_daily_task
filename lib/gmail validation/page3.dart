import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utills/global_var.dart';

class loginPage3 extends StatefulWidget {
  const loginPage3({super.key});

  @override
  State<loginPage3> createState() => _loginPage3State();
}

class _loginPage3State extends State<loginPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEF2F7),
        body: Center(
          child: Container(
            height: 280,
            width: 850,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 22),
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
                    Image(
                      image: AssetImage("assets/images/icon.png"),
                      width: 50,
                      height: 50,
                    ),
                    Text(" Welcome back\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500)),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.person_pin),
                            Text(email),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\n\n\n     You can update your password now if you've forgotten it.",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          '\n\n\n Update password?',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Login Successfully.",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.blue,
                              action: SnackBarAction(
                                  label: 'Undo',
                                  textColor: Colors.white,
                                  onPressed: () {}),
                            ));
                          },
                          child: Container(
                            height: 30,
                            width: 80,
                            margin:
                                EdgeInsets.only(top: 45, left: 45, right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue.shade700,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Continue',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ),
                        )
                        // ElevatedButton(onPressed: (){}, child: Text('Next',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                        //   backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade800), // Change background color here
                        //   minimumSize: MaterialStateProperty.all<Size>(Size(5, 40)), // Change background color here
                        // ),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
