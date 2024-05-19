import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screens/dynamic%20list/skill%20list.dart';
class skillPage2 extends StatefulWidget {
  const skillPage2({super.key});

  @override
  State<skillPage2> createState() => _skillPage2State();
}

class _skillPage2State extends State<skillPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text(
          'Skills',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(children: List.generate(listOfSkill.length, (index) => Padding(
        padding: const EdgeInsets.only(top: 20,left: 10),
        child: Row(
          children: [
            Icon(Icons.lens, color: Colors.deepPurpleAccent,size: 13,),
            Text("  ${listOfSkill[index].text}",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,),),
          ],
        ),
      )),),
    );
  }
}
