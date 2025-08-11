import 'package:flutter/material.dart';
// import 'package:grocery_app/models/beverage.dart';
// import 'package:grocery_app/widgets/beverage_card.dart';

import '../models/beverage.dart';
import '../widgets/beverage_card.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BeverageItem> beverageItems = [
      BeverageItem(
        name: 'Diet Coke',
        sizeInfo: '355ml, Price',
        price: '\$1.99',
        imagePath: 'assets/dietcoke.png',
      ),
      BeverageItem(
        name: 'Sprite Can',
        sizeInfo: '325ml, Price',
        price: '\$1.50',
        imagePath: 'assets/spritecon.png',
      ),
      BeverageItem(
        name: 'Apple & Grape Juice',
        sizeInfo: '2L, Price',
        price: '\$15.99',
        imagePath: 'assets/applegrape.png',
      ),
      BeverageItem(
        name: 'Orange Juice',
        sizeInfo: '2L, Price',
        price: '\$15.99',
        imagePath: 'assets/orangejucie.png',
      ),
      BeverageItem(
        name: 'Coca Cola Can',
        sizeInfo: '325ml, Price',
        price: '\$4.99',
        imagePath: 'assets/cocacola.png',
      ),
      BeverageItem(
        name: 'Pepsi Can',
        sizeInfo: '330ml, Price',
        price: '\$4.99',
        imagePath: 'assets/pepsican.png',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Beverages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.77,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: beverageItems.length,
          itemBuilder: (context, index) {
            return BeverageCard(item: beverageItems[index]);
          },
        ),
      ),
    );
  }
}
