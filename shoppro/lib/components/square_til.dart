import 'package:flutter/material.dart';

class SquareTil extends StatelessWidget {
  final String imagePaht;
  const SquareTil({super.key, required this.imagePaht});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        imagePaht,
        height: 40,
      ),
    );
  }
}
