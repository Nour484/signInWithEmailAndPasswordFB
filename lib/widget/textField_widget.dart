import 'package:flutter/material.dart';

class TextField_widget extends StatelessWidget {
  const TextField_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.add,
            color: Color.fromARGB(255, 45, 43, 43),
          ),
          hintText: "Task",
          constraints: BoxConstraints(maxWidth: 380),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 35, 25, 24)),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}
