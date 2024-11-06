import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppro/components/my_button.dart';
import 'package:shoppro/components/my_textfield.dart';
import 'package:shoppro/components/square_til.dart';
import 'package:shoppro/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controller
  final usernameControler = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    // show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameControler.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        showEmailMessage();
        // print("Error code: ${e.code}");
      } else if (e.code == 'wrong-password') {
        showPasswordMessage();
        // print("Error code: ${e.code}");
      }
    }
  }

  // sign user in method
  void showEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Incorrect Email"),
          );
        });
  }

  void showPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Incorrect Password"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),

              //welcome back you've been missed!
              Text(
                "welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25,
              ),

              // username textfield
              MyTextfield(
                controller: usernameControler,
                hintText: "Enter your username",
                obscureText: false,
              ),

              const SizedBox(
                height: 25,
              ),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: "Enter your password",
                obscureText: true,
              ),
              // forget password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "forget password?",
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // singin button
              MyButton(onTap: signUserIn , textButton: "Sign In"),

              const SizedBox(
                height: 25,
              ),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTil(
                    onTap: () => AuthService().singInwithGoolgle(),
                    imagePath: 'assets/image/Google_Logo.png'),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTil(
                    onTap: (){},
                    imagePath: 'assets/image/Apple_Logo.png'),
                ],
              ),

              const SizedBox(
                height: 35,
              ),
              // not a number ? register now

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Register now?",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
