import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter your 4-digit code', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              obscuringCharacter: '-',
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: InputDecoration(counterText: '', border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const Text('Resend Code', style: TextStyle(color: Colors.green)),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: const Color(0xFF53B175),
                foregroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                  },
                child: const Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}
