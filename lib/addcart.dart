import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const AddCart());
}

class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AddCart UI',
      home: MyHomePage(title: 'Plants'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020612),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 350,
                      child: PageView(
                        controller: _pageController,
                        // Controller for PageView
                        scrollDirection: Axis.horizontal,
                        // Enable horizontal scrolling
                        children: [
                          Image.asset(
                            'assets/food11.png',
                            width: 220,
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/food2.png',
                            width: 220,
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/food3.png',
                            width: 220,
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/food4.png',
                            width: 220,
                            height: 220,
                          ),
                          Image.asset(
                            'assets/food4.png',
                            width: 220,
                            height: 220,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 76),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 5, // Number of images
                  effect: WormEffect(
                    dotHeight: 4,
                    dotWidth: 50,
                    activeDotColor: Colors.orangeAccent,
                    dotColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Food Alu',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Pan-seared duck breast with blueberry\nsauce atop a bed of bok chay, wild\nmushrooms, pancetta, and shallots',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          '250',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Ca+',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Fat',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Carb',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      children: [
                        Text(
                          '850g',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Pro',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 60, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    minimumSize: const Size(500, 60),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  child: const Text(
                    'Add to cart Rs.178.99',
                    style: TextStyle(color: Colors.black, fontSize: 20),
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
