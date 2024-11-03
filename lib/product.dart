import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const Product());
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headphones UI',
      home: MyHomePage(title: 'Headphones'),
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
  final PageController _pageController = PageController();
  String selectedTab = "Overview"; // Track selected tab

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),
        const SizedBox(height: 60),
        SizedBox(
          height: 300,
          child: PageView(
            controller: _pageController,
            children: [
              Image.asset('assets/headphone.png', width: 500, height: 300),
              Image.asset('assets/headphone2.jpg', width: 500, height: 300),
              Image.asset('assets/headphone3.jpg', width: 500, height: 300),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const WormEffect(
              dotHeight: 16,
              dotWidth: 16,
              spacing: 8,
              dotColor: Colors.grey,
              activeDotColor: Color.fromARGB(255, 161, 40, 40),
            ),
          ),
        ),
        const SizedBox(height: 40),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "SONY Headphone MDR-Z7M2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                "\$360.00",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26, top: 6),
          child: Row(
            children: [
              ...List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: index < 4
                            ? const Color.fromARGB(255, 161, 40, 40)
                            : Colors.grey,
                        size: 24,
                      )),
              const SizedBox(width: 8),
              const Text(
                "4.0",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(width: 16),
              const Text(
                "324 Reviews",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color.fromARGB(255, 161, 40, 40),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 26, top: 14),
                  child: Text("Colour"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 5),
                      child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 7),
                                child: Text(
                                  "Red/White/Black",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                width: 2,
                                height: 36,
                                color: Colors.grey,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 26, top: 14),
                  child: Text("Quantity"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 5),
                      child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 28, top: 7, right: 16),
                                child: Text(
                                  "3",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                width: 2,
                                height: 36,
                                color: Colors.grey,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 26),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 161, 40, 40),
              elevation: 4,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "ADD TO CART",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26, top: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: 436,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Overview Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = "Overview";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedTab == "Overview" ? const Color.fromARGB(255, 161, 40, 40) : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "Overview",
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedTab == "Overview" ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(width: 2, height: 40, color: Colors.grey),

                    // Description Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = "Description";
                          });
                        },
                        child: Container(
                          color: selectedTab == "Description" ? const Color.fromARGB(255, 161, 40, 40) : Colors.transparent,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedTab == "Description" ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(width: 2, height: 40, color: Colors.grey),

                    // Delivery Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = "Delivery";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedTab == "Delivery" ? const Color.fromARGB(255, 161, 40, 40) : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedTab == "Delivery" ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Conditional message below the tabs
              if (selectedTab == "Overview") ...[
                const SizedBox(height: 8), // Space between the tabs and message
                const Text(
                  "This is the Overview section.",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ],
          ),
        ),

      ]),
    );
  }
}
