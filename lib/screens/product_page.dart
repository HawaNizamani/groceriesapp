import 'package:flutter/material.dart';
// import 'package:grocery_app/widgets/custom_elevated_button.dart';

import '../widgets/custom_elevated_button.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  int quantity = 1;
  bool isFavorite = false;
  bool isProductDetailExpanded = false;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void _toggleProductDetail() {
    setState(() {
      isProductDetailExpanded = !isProductDetailExpanded;
    });
  }

  void _addToBasket() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added $quantity Natural Red Apple(s) to basket!'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFF2F3F2),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 220,
                        child: Image.asset(
                          'assets/apple.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.ios_share_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Natural Red Apple',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      GestureDetector(
                        onTap: _toggleFavorite,
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.grey[400],
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '1kg, Price',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: _decrementQuantity,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFB3B3B3),
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              '$quantity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            onTap: _incrementQuantity,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$${(4.99 * quantity).toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 26),
                  Divider(color: Colors.grey[300], thickness: 1, height: 1),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Detail',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),

                        GestureDetector(
                          onTap: _toggleProductDetail,
                          child: Icon(
                            isProductDetailExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isProductDetailExpanded) ...[
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                  Divider(color: Colors.grey[300], thickness: 1, height: 1),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      children: [
                        Text(
                          'Nutritions',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '100gr',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[300], thickness: 1, height: 1),

                  // Review Section
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Color(0xFFF3603F),
                                );
                              }),
                            ),
                            SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 95,
        color: Colors.transparent,
        child: CustomElevatedButton(
          text: 'Add To Basket',
          onPressed: _addToBasket,
        ),
      ),
    );
  }
}
