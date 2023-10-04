import 'package:flutter/material.dart';

class AddPeopleplus extends StatelessWidget {
  const AddPeopleplus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add People'),
        backgroundColor:
            Color.fromARGB(255, 17, 9, 235), // Customize the app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Add spacing between fields
            Text(
              'Age',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Age',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Add spacing between fields
            Text(
              'Place',
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
            SizedBox(height: 16), // Add spacing at the bottom
            ElevatedButton(
              onPressed: () {
                // Add People button onPressed action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 17, 9, 235), // Customize button color
              ),
              child: Text('Add People'),
            ),
          ],
        ),
      ),
    );
  }
}
