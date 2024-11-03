import 'package:flutter/material.dart';

void main() {
  runApp(const Foods());
}

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foods UI',
      home: MyHomePage(title: 'Foods'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 55, 106),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Image.asset(
              'assets/hungreylogo.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            const Text(
              " ARE YOU\nHUNGREY",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
            ),
            const SizedBox(height: 220),
            const AnimatedButton(),
          ],
        ),
      ),
    );
  }
}

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  AnimatedButtonState createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedButton> {
  bool isCircleOnRight = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,right: 40),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isCircleOnRight = !isCircleOnRight;
          });
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(34),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Animated circle inside the button
            AnimatedAlign(
              alignment: isCircleOnRight ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 55, 106),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Text overlaid on top of the moving circle
            Visibility(
              visible: !isCircleOnRight,
              child: const Text(
                "Order Now",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}