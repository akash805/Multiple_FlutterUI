import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Burger());
}

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger UI',
      home: MyHomePage(title: 'Burger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;


  String selectedLabel = "All";

  // List of images for the cards
  final List<String> imagePaths = [
    'assets/burger1.png',
    'assets/burger2.png',
    'assets/burger3.png',
    'assets/burger4.png',
    'assets/burger5.png',
  ];

  void selectCard(String label) {
    setState(() {
      selectedLabel = label;
    });
  }

  Color getCardColor(String label) {
    return label == selectedLabel
        ? const Color.fromARGB(255, 142, 13, 13)
        : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 280, top: 20),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 16),
              child: Text(
                "Choose",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Your Favorite Food",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for food...",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 18),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 60,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 142, 13, 13),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.filter_list, color: Colors.white),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildSelectableCard("All"),
                  buildSelectableCard("Pizza"),
                  buildSelectableCard("Burger"),
                  buildSelectableCard("Sandwich"),
                  buildSelectableCard("French Fries"),
                  buildSelectableCard("Pasta"),
                  buildSelectableCard("Manchurian"),
                ],
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26),
                  child: Text("Popular Food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 226),
                  child: Text("See All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 13, 13),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  imagePaths.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 8, top: 20),
                    child: SizedBox(
                      height: 280,
                      width: 180,
                      child: Card(
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 100),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color.fromARGB(255, 142, 13, 13),
                              ),
                            ),
                            Image.asset(
                              imagePaths[index],
                              width: 180,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(left: 14),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Hamburger",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 14),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Burger",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 14, top: 12),
                                  child: Text(
                                    "Rs.250.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  width: 66,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 18, top: 16, bottom: 5),
                                  child: Icon(
                                    Icons.add_box_rounded,
                                    size: 24,
                                    color: Color.fromARGB(255, 142, 13, 13),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26, top: 30),
                  child: Text("Popular Food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 226, top: 30),
                  child: Text("See All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 13, 13),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  imagePaths.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 8, top: 20),
                    child: SizedBox(
                      height: 280,
                      width: 180,
                      child: Stack(
                        children: [
                          Card(
                            color: Colors.white,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 100),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Color.fromARGB(255, 142, 13, 13),
                                  ),
                                ),
                                Image.asset(
                                  imagePaths[index],
                                  width: 180,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(left: 14),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hamburger",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 14),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Burger",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 14, top: 12),
                                      child: Text(
                                        "Rs.250.0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 66,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: 18, top: 16, bottom: 5),
                                      child: Icon(
                                        Icons.add_box_rounded,
                                        size: 24,
                                        color: Color.fromARGB(255, 142, 13, 13),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          // transparent to prevent overlap
          color: const Color.fromARGB(255, 142, 13, 13),
          // Your custom color
          buttonBackgroundColor: const Color.fromARGB(255, 142, 13, 13),
          height: 60,
          items: const <Widget>[
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.favorite, color: Colors.white),
            Icon(Icons.shopping_cart, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            // Handle navigation to different screens if needed
          }),
    );
  }

  Widget buildSelectableCard(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: GestureDetector(
        onTap: () => selectCard(label),
        child: Card(
          color: getCardColor(label),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
