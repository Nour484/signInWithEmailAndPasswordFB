import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController? mycontroller;
  @override
  void initState() {
    mycontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(
          controller: mycontroller,
          onChanged: (value) {
            print(mycontroller);
          })
    ])));
  }
}
