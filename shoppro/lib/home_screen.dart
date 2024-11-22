import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppro/components/home_box.dart';
import 'package:shoppro/components/my_button.dart';
import 'package:shoppro/menu_page_sceen.dart';

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
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      //   title: Text("Home"),
      //   actions: [IconButton(onPressed: singUserOut, icon: Icon(Icons.logout))],
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(0, 0),
                              blurRadius: 15.0,
                              spreadRadius: 10.0),
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1730727384555-35318cb80600?q=80&w=2300&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      child: SizedBox(
                        width: 350,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    goTomenuPage();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        singUserOut();
                                      },
                                      icon: Icon(
                                        Icons.logout,
                                        color: Colors.white,
                                        size: 30,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 30,
                      left: 20,
                      child: SizedBox(
                        width: 300,
                        child: Text(
                          "Yo, welcome to my application.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) => Column(
                            children: [
                              // Box
                              Home_box(
                                  image:
                                      "https://images.unsplash.com/photo-1729691692870-a957012d616a?q=80&w=2784&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  titleBox: "Box1",
                                  textDescription: "decription",
                                  price: "1,352"),
                              SizedBox(
                                height: 20,
                              ),
                              Home_box(
                                  image:
                                      "https://images.unsplash.com/photo-1729508895264-d61e3f6587fa?q=80&w=2819&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  titleBox: "Box2",
                                  textDescription: "description",
                                  price: "2,350"),
                              SizedBox(
                                height: 20,
                              ),
                              Home_box(
                                  image:
                                      "https://images.unsplash.com/photo-1729505621471-ea543f4a0a6b?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  titleBox: "Box3",
                                  textDescription: "description",
                                  price: "3,504"),
                              SizedBox(
                                height: 20,
                              ),
                              Home_box(
                                  image:
                                      "https://images.unsplash.com/photo-1730304538482-5fa524c79411?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  titleBox: "Box4",
                                  textDescription: "disceiption",
                                  price: "4,560"),
                            ],
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}
