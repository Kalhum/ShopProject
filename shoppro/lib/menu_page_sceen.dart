import 'package:flutter/material.dart';
import 'package:shoppro/components/my_box_menu.dart';
import 'package:shoppro/home_screen.dart';
import 'package:shoppro/menu_page_provider.dart';

class MenuPage extends StatefulWidget {
  MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  MenuPageProvider menuPageProvider = MenuPageProvider();

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
                icon: Icon(Icons.arrow_back),
              ),
              title: Text("Menu page"),
              actions: [Icon(Icons.logout)],
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: menuPageProvider.connectApiProduct(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text("No products found"));
                  } else {
                    var products = snapshot.data!;
                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        var product = products[index];
                        return My_box_menu(
                          urlImage: product['Image_Product'] ??
                              'https://via.placeholder.com/150',
                          priceProduct: product['Price_Product'].toString() ??
                              'No description available',
                          textFoodnumber:
                              product['Name_Product'] ?? 'Unnamed product',
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
