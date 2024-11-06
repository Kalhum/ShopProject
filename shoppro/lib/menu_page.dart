import 'package:flutter/material.dart';
import 'package:shoppro/components/my_box_menu.dart';
import 'package:shoppro/home_screen.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_screen()));
                },
                icon: Icon(Icons.arrow_back)),
            title: Text("Menu page"),
            actions: [Icon(Icons.logout)],
          ),
          SizedBox(
            height: 650,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (context, index) => Column(
                children: [
                  My_box_menu(
                      urlImage:
                          "https://images.unsplash.com/photo-1533777324565-a040eb52facd?q=80&w=2872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      textFoodInfo:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley ",
                      textFoodnumber: "My food number1"),
                  My_box_menu(
                      urlImage:
                          "https://images.unsplash.com/photo-1561043433-aaf687c4cf04?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      textFoodInfo:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                      textFoodnumber: "My food number2"),
                  My_box_menu(
                      urlImage:
                          "https://images.unsplash.com/photo-1564844536311-de546a28c87d?q=80&w=2871&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      textFoodInfo:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                      textFoodnumber: "My food number3")
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
