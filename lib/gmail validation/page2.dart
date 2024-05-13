import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app_daily_task/gmail%20validation/page1.dart';
import 'package:resume_app_daily_task/utills/global_var.dart';
class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}
TextEditingController txtPASSWORD = TextEditingController();

class _secondPageState extends State<secondPage> {
  bool _password = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2F7),
      body: Form(
        key: formkey,
        child: Center(
          child: Container(
              height: 280,
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
                    Text(" Welcome\n",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500)),
                    OutlinedButton(onPressed: (){}, child: Row(children: [
                      Icon(Icons.person_pin),
                      Text(email),
                      Icon(Icons.arrow_drop_down),
                    ],))
                  ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      height: 65,
                      padding: EdgeInsets.only(right: 5),
                      margin: EdgeInsets.only(top: 50,),
                      child: TextFormField(
                        controller: txtPASSWORD,
                        obscureText: _password,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black87,width: 2)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black87,width: 1)),
                          labelText: 'Enter your password',
                          labelStyle: TextStyle(color: Colors.grey.shade800,fontSize: 13,fontWeight: FontWeight.bold),
                        ),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Enter a password';
                          }
                          else if(value.length<=8)
                            {
                              return 'The password  have grater than 8 character';
                            }
                          else if(value.contains(' '))
                            {
                              return 'space is not allow';
                            }
                          else if(value == value.toUpperCase())
                            {
                              return 'Enter atleast one character in small later.';
                            }
                          else if(value == value.toLowerCase())
                            {
                              return 'Enter atleast one character in capital later.';
                            }
                          int check=0;
                          for(int i=0;i<10;i++)
                            {
                              if(value.contains('${i}'))
                              {
                               check++;
                              }
                            }
                          if(check==0)
                            {
                              check=0;
                              return 'enter a number';
                            }
                          int ch=0;
                          for (int codePoint = startCodePoint; codePoint < endCodePoint; codePoint++) {
                            print(String.fromCharCode(codePoint));
                            if(value.contains(String.fromCharCode(codePoint)))
                              {
                                ch++;
                              }
                          }
                        },
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              _password = !_password;
                            });
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.grey.shade800),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(_password? ' ':'✔'),
                          ),
                        ),
                        Text("   Show password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //Text('\n     Forgot email?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 200,),
                        Text('\n\n\n Forgot password?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),),
                        GestureDetector(
                          onTap: (){
                            bool response = formkey.currentState!.validate();
                            if(response)
                            {
                              Navigator.of(context).pushNamed('/gmail3');
                              password=txtPASSWORD.text;
                            }
                          },
                          child: Container(height: 30,
                            width: 65,
                            margin: EdgeInsets.only(top: 45,left: 50),
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
      )
      );
  }
}
