import 'package:flutter/material.dart';

void main() {
  runApp(HUETopiaApp());
}

class HUETopiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6FA), // Light Lavender
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HUETopia',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              Text(
                'Palette-izer',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Arial',
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to HUETopia, the accessibility app designed to enhance color perception.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/lets_get_started.png', // Add this image in your project
                height: 150,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Action for the button
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5E2D5D), // Dark Purple
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Get Start',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}