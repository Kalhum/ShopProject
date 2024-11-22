import 'package:flutter/material.dart';
import 'package:shoppro/home_screen.dart';

class Detail_screen extends StatelessWidget {
  const Detail_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home_screen()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text("yo welcome to detail page"),
      ),
    );
  }
}
