import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text('Loging', textAlign: TextAlign.left, style: TextStyle(fontSize: 30,),),
            SizedBox(height: 20,),
            Text('Enter your email and password', textAlign: TextAlign.left,),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              obscuringCharacter: '.',
              decoration: InputDecoration(labelText: 'Password', suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot Password?', style: TextStyle(color: Colors.grey[600])),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF53B175),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Don’t have an account? Signup', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
