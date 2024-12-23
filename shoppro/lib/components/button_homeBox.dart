import 'package:flutter/material.dart';

class Button_homeBox extends StatelessWidget {
  Function()? onTap;
  String textBtn = "";

  Button_homeBox({super.key, required this.onTap, required this.textBtn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          textBtn,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
