import 'package:flutter/material.dart';

class AddPropertyPro extends StatelessWidget {
  const AddPropertyPro({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Property'), // App bar title
        backgroundColor:
            Color.fromARGB(255, 17, 9, 235), // Customize app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Property Name', // Property Name field
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Property Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Add spacing between fields
            Text(
              'Place', // Place field
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Place',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Add spacing between fields
            Text(
              'Capacity', // Capacity field
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Capacity',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Add spacing at the bottom
            ElevatedButton(
              onPressed: () {
                // Add Property button onPressed action
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Color.fromARGB(255, 17, 9, 235), // Customize button color
              ),
              child: Text('Add Property'),
            ),
          ],
        ),
      ),
    );
  }
}
