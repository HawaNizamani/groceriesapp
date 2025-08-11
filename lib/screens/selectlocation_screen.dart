import 'package:flutter/material.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Icon(Icons.location_pin, color: Color(0xff5565EE),),
            const SizedBox(height: 20),
            const Text(
              'Select Your Location',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Switch on your location to stay in tune with what’s happening in your area',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Your Zone',
                border: UnderlineInputBorder(),
              ),
              items: ['Zone 1', 'Zone 2', 'Zone 3']
                  .map((zone) => DropdownMenuItem(
                value: zone,
                child: Text(zone),
              ))
                  .toList(),
              onChanged: (value) {
                // Handle zone selection
              },
            ),

            SizedBox(height: 10),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Your Area',
                hintText: 'Types of your area',
                border: UnderlineInputBorder(),
              ),
              items: ['Urban', 'Suburban', 'Rural']
                  .map((area) => DropdownMenuItem(
                value: area,
                child: Text(area),
              ))
                  .toList(),
              onChanged: (value) {
                // Handle area selection
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF53B175),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
