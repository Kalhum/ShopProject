import 'package:flutter/material.dart';
import 'package:shoppro/components/my_button.dart';
import 'package:shoppro/components/my_textfield.dart';
import 'package:shoppro/components/square_til.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // text editing controller
  final usernameControler = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method

  void singUserIn() {}

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
              // singin button
              MyButton(
                onTap: singUserIn,
              ),

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTil(imagePaht: 'lib/image/Google_Logo.png'),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTil(imagePaht: 'lib/image/Apple_Logo.png'),
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
