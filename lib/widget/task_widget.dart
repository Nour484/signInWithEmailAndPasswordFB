import 'package:flutter/material.dart';
import 'package:textfield/widget/textField_widget.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Center(child: TextField_widget()),
      ],
    );
  }
}
