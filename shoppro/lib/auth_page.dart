import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppro/home_screen.dart';
import 'package:shoppro/login_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // user it logged in
        if (snapshot.hasData) {
          return Home_screen();
        }
        // user it NOT logged in
        else {
          return LoginScreen();
        }
      },
    ));
  }
}
