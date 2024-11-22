import 'package:flutter/material.dart';

void main() {
  runApp(const SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignUp UI',
      home: MyHomePage(title: 'SignUp'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image at the top center
          Image.asset(
            'assets/foodlogo.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),

        ],
      ),

    );
  }
}
