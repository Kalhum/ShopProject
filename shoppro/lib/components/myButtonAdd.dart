import 'package:flutter/material.dart';

class Mybuttonadd extends StatelessWidget {
  Function()? onTap;
  String textBtn = "";
  Mybuttonadd({super.key, required this.onTap, required this.textBtn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0)
            ]),
        child: Center(
          child: Text(textBtn),
        ),
      ),
    );
  }
}
