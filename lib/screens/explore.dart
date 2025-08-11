import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceriesapp/screens/product_page.dart';
// import 'package:grocery_app/models/category.dart';
// import 'package:grocery_app/screens/product_page.dart';
// import 'package:grocery_app/widgets/category_card.dart';

import '../models/category.dart';
import '../widgets/category_card.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  static List<Category> categories = [
    Category(
      name: 'Fresh Fruits\n& Vegetable',
      color: Colors.green,
      imagePath: 'assets/freshfruit.png',
    ),
    Category(
      name: 'Cooking Oil\n& Ghee',
      color: Colors.orange,
      imagePath: 'assets/cookingoil.png',
    ),
    Category(
      name: 'Meat & Fish',
      color: Colors.red,
      imagePath: 'assets/meatfish.png',
    ),
    Category(
      name: 'Bakery & Snacks',
      color: Colors.purple,
      imagePath: 'assets/bakerysnacks.png',
    ),
    Category(
      name: 'Dairy & Eggs',
      color: Colors.yellow,
      imagePath: 'assets/dairy.png',
    ),
    Category(
      name: 'Beverages',
      color: Colors.blue,
      imagePath: 'assets/bavrages.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Find Products',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Color(0xFF181B19),
                    size: 22,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Search Store',
                    style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Categories Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductPage()),
                      );
                    },
                    child: CategoryCard(category: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF53B175),
        unselectedItemColor: Color(0xFF181725),
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}



