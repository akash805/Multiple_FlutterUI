import 'package:flutter/material.dart';

void main() {
  runApp(const Drinks());
}

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drink UI',
      home: MyHomePage(title: 'Drink'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF020612),
      appBar: AppBar(
        backgroundColor: const Color(0xFF020612),
        leading: IconButton(
          color: Colors.orangeAccent,
          icon: const Icon(Icons.arrow_back_ios_new, size: 28),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            color: Colors.orangeAccent,
            icon: const Icon(Icons.shopping_cart, size: 28),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(screenWidth * 0.10),
                  bottomRight: Radius.circular(screenWidth * 0.10),
                ),
              ),
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 1; i <= 8; i++)
                        drinkCard(context, screenWidth, 'assets/drink$i.jpeg'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drinkCard(BuildContext context, double screenWidth, String assetPath) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              assetPath,
              width: screenWidth * 0.35,
              height: screenWidth * 0.35,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DELICIOUS FOOD',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                'Choco | Ice Cream | Milk\nFlavour | Shake',
                style: TextStyle(color: Colors.brown, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
