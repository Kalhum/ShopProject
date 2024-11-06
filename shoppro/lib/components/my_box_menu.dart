import 'package:flutter/material.dart';

class My_box_menu extends StatelessWidget {
  String urlImage = "";
  String textFoodnumber = "";
  String textFoodInfo = "";
  My_box_menu(
      {super.key,
      required this.urlImage,
      required this.textFoodInfo,
      required this.textFoodnumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              width: 500,
              height: 500,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 17, 69, 19),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 300,
                                width: 100,
                              ),
                              Positioned(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        urlImage,
                                        fit: BoxFit.cover,
                                      ))),
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 90,
                      left: 50,
                      child: Expanded(
                        child: SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              Text(
                                textFoodnumber,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                textFoodInfo,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
