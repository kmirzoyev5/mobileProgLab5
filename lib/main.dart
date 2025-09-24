import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0), // Added margin here
                  padding: const EdgeInsets.all(16.0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50), // Added 4th icon
                    Icon(Icons.star, size: 50), // Added 5th icon
                  ],
                ),
                const SizedBox(height: 20), // spacing before TextField
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your password',
                    ),
                    obscureText: true, // Hide input for password
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
