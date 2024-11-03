import 'package:flutter/material.dart';

void main() {
  runApp(const Watches());
}

class Watches extends StatelessWidget {
  const Watches({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watch UI',
      home: MyHomePage(title: 'Watch'),
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
  int activeIndex = 0; // Track the active image index

  final List<String> imagePaths = [
    'assets/watch1.png',
    'assets/watch2.png',
    'assets/watch3.png',
    'assets/watch4.png',
    'assets/watch5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios_new, size: 28),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.shopping_bag_outlined, size: 28),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Image carousel
          SizedBox(
            height: 350, // Image height
            child: PageView.builder(
              itemCount: imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  activeIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  width: 350,
                  height: 350,
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // Row of dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imagePaths.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: activeIndex == index ? Colors.black : Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.black87,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Container(
                          width: 100,
                          height: 2,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 34, top: 50),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "\$205.99",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 34),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Iconic Link",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 34, top: 30),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Choose your size",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                          ),
                          Spacer(),
                          // Use Spacer to push "Size guide" to the right
                          Padding(
                            padding: EdgeInsets.only(top: 30, right: 34),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Size guide",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (var size in ["28", "32", "36", "40"])
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Card(
                                    color: Colors.white24,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            size,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                          const Text(
                                            "mm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 38),
                      SizedBox(
                        height: 50,
                        width: 360,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Padding(
                        padding: EdgeInsets.only(left: 80, top: 10, bottom: 40),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Save",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Icon(
                              Icons.ios_share_rounded,
                              color: Colors.grey,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Share",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
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
