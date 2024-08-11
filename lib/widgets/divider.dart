import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 40,
            height: 3,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
