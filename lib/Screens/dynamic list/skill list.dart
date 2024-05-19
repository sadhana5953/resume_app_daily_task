import 'package:flutter/material.dart';

class skillPage1 extends StatefulWidget {
  const skillPage1({super.key});

  @override
  State<skillPage1> createState() => _skillPage1State();
}

class _skillPage1State extends State<skillPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text(
          'Dynamic Skill List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            listOfSkill.length,
            (index) => ListTile(
              title: TextFormField(
                style: TextStyle(color: Colors.deepPurpleAccent),
                controller: listOfSkill[index],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepPurpleAccent, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepPurpleAccent, width: 3)),
                  hintText: 'Write Your Skill',
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.add_box,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    onPressed: () {
                      TextEditingController txtSkill = TextEditingController();
                      setState(() {
                        listOfSkill.add(txtSkill);
                      });
                    },
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (index != 0) {
                            listOfSkill.removeAt(index);
                          }
                        });
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.deepPurple,
                        size: 30,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FilledButton(
        child: Icon(Icons.show_chart),
        onPressed: () {
          Navigator.of(context).pushNamed('/skill');
        },
      ),
    );
  }
}

TextEditingController txtSkill = TextEditingController();
List listOfSkill = [txtSkill];
