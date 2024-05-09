import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Column(children: [
      ],),),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red), //leading: Icon(Icons.menu),
      ),
    );
  }
}
