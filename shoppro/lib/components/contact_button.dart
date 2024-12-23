import 'package:flutter/material.dart';

class Contact_button extends StatelessWidget {
  Function()? onTap;
  String buttonText = "";
  Contact_button({super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 25),
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
