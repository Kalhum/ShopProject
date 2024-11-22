import 'package:flutter/material.dart';
import 'package:shoppro/components/myButtonAdd.dart';

class My_box_menu extends StatelessWidget {
  String urlImage = "";
  String textFoodnumber = "";
  String priceProduct = "";
  My_box_menu(
      {super.key,
      required this.urlImage,
      required this.priceProduct,
      required this.textFoodnumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              width: 700,
              height: 500,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 17, 69, 19),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                  child: SizedBox(
                                height: 250,
                                width: 600,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      urlImage,
                                      fit: BoxFit.cover,
                                    )),
                              )),
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 75,
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
                                priceProduct + " Baht",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Mybuttonadd(
                                  onTap: () {
                                    print("Add in card");
                                  },
                                  textBtn: "Add in card")
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
