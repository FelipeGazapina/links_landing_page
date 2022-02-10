import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Made in flutter",
          style: TextStyle(fontSize: 19),
        ),
        SizedBox(width: 8,),
        Image.asset(
          "lib/public/flutter-icon.png",
          width: 25,
          height: 25,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}