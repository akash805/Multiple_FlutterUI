import 'package:flutter/material.dart';

void main() {
  runApp(const Headphones());
}

class Headphones extends StatelessWidget {
  const Headphones({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headphones UI',
      home: MyHomePage(title: 'Headphones'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 40, 40),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 180),
              child: Text(
                "truvio",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 100),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter a Username......",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 26, right: 20),
                  child:
                      Icon(Icons.person_outline_outlined, color: Colors.grey),
                ), // Person icon
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter a Username......",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 26, right: 20),
                  child: Icon(Icons.lock, color: Colors.grey),
                ), // Person icon
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 138, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                "SIGN IN",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Forget your password?",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
