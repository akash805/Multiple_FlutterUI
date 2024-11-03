import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerAddToCart());
}

class BurgerAddToCart extends StatelessWidget {
  const BurgerAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BurgerAddToCart UI',
      home: MyHomePage(title: 'BurgerAddToCart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String selectedButton = 'details';
  bool showFullText = false;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 500,
            height: 460,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Card(
                    color: const Color.fromARGB(255, 142, 13, 13),
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(220),
                        bottomLeft: Radius.circular(220),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context); // Navigate back
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 16,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Image.asset(
                    'assets/burger1.png',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 60),
                child: Text(
                  "Hamburger",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 220),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 60),
                child: Text(
                  "Rs. 250.0",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 142, 13, 13)),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Burger",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'details';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedButton == 'details'
                            ? const Color.fromARGB(255, 142, 13, 13)
                            : Colors.grey,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                      ),
                      child: const Text("Details",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'review';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedButton == 'review'
                            ? const Color.fromARGB(255, 142, 13, 13)
                            : Colors.grey,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                      ),
                      child: const Text("Review",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ],
                ),
                const SizedBox(height:40),
                // Space between buttons and details text
                if (selectedButton == 'details')
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          showFullText
                              ? "This is the detailed description of the burger. It includes juicy ingredients and a delicious flavor profile that makes it unique and enjoyable. Our burger is made with the finest ingredients, ensuring a satisfying and mouth-watering experience in every bite."
                              : "This is the detailed description of the burger. It includes juicy ingredients and a delicious flavor profile that makes it unique and enjoyable. Our burger is made with the finest ingredients, ensuring...",
                          style: const TextStyle(fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showFullText = !showFullText;
                            });
                          },
                          child: Text(
                            showFullText ? "See Less" : "See More",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 142, 13, 13),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                // Card in the background
                                Card(
                                  color: const Color.fromARGB(255, 245, 245, 245), // Card background color
                                  elevation: 4, // Card shadow depth
                                  margin: const EdgeInsets.symmetric(horizontal: 0), // Horizontal margin
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26), // Rounded corners
                                  ),
                                  child: const SizedBox(
                                    height: 44, // Height of the Card
                                    width: 130, // Full width
                                  ),
                                ),
                                // Row with icons, quantity, and button on top of the Card
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Decrease quantity button
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (quantity > 1) quantity--; // Ensure quantity doesn’t go below 1
                                        });
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Color.fromARGB(255, 142, 13, 13),
                                        radius: 20,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    // Display current quantity
                                    Text(
                                      "$quantity",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    // Increase quantity button
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Color.fromARGB(255, 142, 13, 13),
                                        radius: 20,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 166),
                            ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 142, 13, 13),
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 26),
                              ),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
