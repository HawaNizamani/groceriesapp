import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('onboard.jpg'),
            const Text(
              'Get your groceries\nwith nectar',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Continue with Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5383EC),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60),
                side: const BorderSide(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/phone');
              },
              icon: const Icon(Icons.facebook),
              label: const Text('Continue with Facebook'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4267B2),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
