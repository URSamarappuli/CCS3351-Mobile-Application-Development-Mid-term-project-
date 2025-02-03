import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const BookDetailsPage({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5.0), // Reduced height
            Center(
              child: Text(
                author,
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            const SizedBox(height: 0.0), // Reduced height
            Center(
              child: Container(
                // Add explicit margin/padding control
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: Image.asset(
                  coverImagePath,
                  height: 400.0,
                  fit: BoxFit.cover, // Ensure the image scales properly
                ),
              ),
            ),
            const SizedBox(height: 5.0), // Reduced height
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rs.$price',
                  style: const TextStyle(
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Button pressed for $title');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 15.0,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Add to cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
