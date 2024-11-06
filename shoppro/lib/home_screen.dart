import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppro/components/my_button.dart';
import 'package:shoppro/menu_page.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  void singUserOut() {
    FirebaseAuth.instance.signOut();
  }
  final user = FirebaseAuth.instance.currentUser!;


  // goto menu page
  void goTomenuPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MenuPage()));
  }
  // End function goto menu page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: singUserOut, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Center(
            child: Text("Logged in as  " + user.email!),
          ),
          MyButton(onTap: goTomenuPage, textButton: "Menu Page")
        ],
      ),
    );
  }
}
