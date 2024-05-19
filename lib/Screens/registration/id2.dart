import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/image_Picker/imagePicker.dart';
import 'package:resume_app_daily_task/Screens/registration/id.dart';
import 'package:resume_app_daily_task/utills/global_var.dart';
class idCard2 extends StatefulWidget {
  const idCard2({super.key});

  @override
  State<idCard2> createState() => _idCard2State();
}


class _idCard2State extends State<idCard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage('https://i.pinimg.com/736x/83/59/8a/83598a5ab3f5371e7662b565836c0c39.jpg'),fit: BoxFit.cover)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 80,),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey,
                  backgroundImage: (fileimage==null)?null:FileImage(fileimage!),
                ),
              ],
            ),

            Center(child: Text('\n$name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
            RichText(text: TextSpan(children: [
              TextSpan(text: '\n\n\nID NO    : $id\n\n',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500,)),
              TextSpan(text: 'D.O.B     : $dob\n\n',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500,)),
              TextSpan(text: 'PHONE  : $contact\n\n',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500,)),
              TextSpan(text: 'E-MAIL  : $Email\n\n',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500,)),
            ]))
          ],),
        )
      ),
    );
  }
}
