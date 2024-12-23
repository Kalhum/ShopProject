import 'package:flutter/material.dart';
import 'package:shoppro/detail_screen.dart';

class Contact_screen extends StatefulWidget {
  const Contact_screen({super.key});

  @override
  State<Contact_screen> createState() => _Contact_screenState();
}

class _Contact_screenState extends State<Contact_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail_screen()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text("yo welcome to contact page"),
      ),
    );
  }
}
