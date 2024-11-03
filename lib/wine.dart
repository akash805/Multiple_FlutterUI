import 'package:flutter/material.dart';

void main() {
  runApp(const Wines());
}

class Wines extends StatelessWidget {
  const Wines({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wine UI',
      home: MyHomePage(title: 'Wine'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/bottle.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 40,
            right: 40,
            child: Card(
              color: Colors.black54,
              elevation: 5, // Add shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Explore Your Tastes',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 40), // Space between text and arrow
                      CircleAvatar(
                        backgroundColor: Colors.black, // Customize circle color
                        radius: 16, // Circle size
                        child: Icon(
                          Icons.arrow_forward_ios, // Arrow icon
                          color: Colors.white, // Icon color
                          size: 16, // Icon size
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
