import 'package:flutter/material.dart';
import 'package:shoppro/components/button_homeBox.dart';
import 'package:shoppro/detail_screen.dart';

class Home_box extends StatelessWidget {
  String image, titleBox, textDescription, price = "";

  Home_box(
      {super.key,
      required this.image,
      required this.titleBox,
      required this.textDescription,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                height: 190,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleBox,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      textDescription,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        )
                      ],
                    ),
                    Button_homeBox(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Detail_screen()));
                      },
                      textBtn: 'Detail',
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  price + "฿",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
