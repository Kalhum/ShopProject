import 'package:flutter/material.dart';
import 'package:shoppro/components/contact_button.dart';
import 'package:shoppro/contact_screen.dart';
import 'package:shoppro/home_screen.dart';

class Detail_screen extends StatelessWidget {
  const Detail_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_screen()));
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Product name"),
          actions: [
            Contact_button(
                onTap: () {
                  print("Contact button");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Contact_screen()));
                },
                buttonText: "Contact")
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Alexander Mass",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 300,
                child: Image.network(
                  "https://images.unsplash.com/photo-1731688687812-db09e24f2384?q=80&w=2582&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "1,352" + "฿",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("1 month ago")
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 30,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.heart_broken_sharp,
                              size: 30,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Text("discroption")
            ],
          ),
        ));
  }
}
