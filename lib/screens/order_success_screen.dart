import 'package:flutter/material.dart';
import 'package:groceriesapp/screens/profile_screen.dart';
// import 'package:grocery_app/screens/profile_screen.dart';
// import 'package:grocery_app/widgets/custom_elevated_button.dart';

import '../widgets/custom_elevated_button.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: Image.asset(
                  'assets/order_accepted.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Your Order has been accepted',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Your items has been placed and is on it's way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              Spacer(),
              CustomElevatedButton(
                text: 'Track Order',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Back to Home',
                  style: TextStyle(color: Color(0xFF181725)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
