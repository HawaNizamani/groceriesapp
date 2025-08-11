import 'package:flutter/material.dart';
import 'package:groceriesapp/screens/beverages_screen.dart';
import 'package:groceriesapp/screens/explore.dart';
import 'package:groceriesapp/screens/login_screen.dart';
import 'package:groceriesapp/screens/onboarding_screen.dart';
import 'package:groceriesapp/screens/order_success_screen.dart';
import 'package:groceriesapp/screens/phonenumber_screen.dart';
import 'package:groceriesapp/screens/product_page.dart';
import 'package:groceriesapp/screens/profile_screen.dart';
import 'package:groceriesapp/screens/selectlocation_screen.dart';
import 'package:groceriesapp/screens/signin_screen.dart';
import 'package:groceriesapp/screens/signup_screen.dart';
import 'package:groceriesapp/screens/splash_screen.dart';
import 'package:groceriesapp/screens/verification_screen.dart';


void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'), // Customize if needed
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/signin': (context) => const SignInScreen(),
        '/phone': (context) => const PhoneNumberScreen(),
        '/verify': (context) => const VerificationScreen(),
        '/location': (context) => const SelectLocationScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/product': (context) => const ProductPage(),
        '/explore': (context) => const Explore(),
        '/beverage': (context) => const BeveragesScreen(),
        '/order': (context) => const OrderSuccessScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}