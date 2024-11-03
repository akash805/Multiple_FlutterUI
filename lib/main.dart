import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant UI',
      home: MyHomePage(title: 'Plants'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.06),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
            child: Column(
              children: [
                Row(
                  children: [
                    Material(
                      elevation: 15,
                      shadowColor: Colors.black.withOpacity(0.6),
                      shape: const CircleBorder(),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg'),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.08),
                    Expanded(
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon:
                                const Icon(Icons.search, color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.mic, color: Colors.grey),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Added scroll view to avoid overflow
        child: Padding(
          padding: EdgeInsets.only(
              right: screenWidth * 0.05, top: screenHeight * 0.02),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: const Color.fromARGB(255, 7, 52, 2), // Custom color with RGB values
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.1),
                        ),
                        child: SizedBox(
                          width: screenWidth * 0.7,
                          height: screenHeight * 0.40,
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.05),
                          ),
                        ),
                      ),

                      Positioned(
                        top: screenHeight * 0.02,
                        left: -screenWidth * 0.4,
                        child: Image.asset(
                          'assets/asok.png',
                          width: screenWidth * 0.6,
                          height: screenHeight * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.05,
                        left: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ficus',
                              style: TextStyle(
                                fontSize: screenWidth * 0.12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Elastica',
                              style: TextStyle(
                                fontSize: screenWidth * 0.12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.001),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: screenWidth * 0.05,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              'Tumbuhan termasuk jenis\n'
                              'dikotil dari kelmpok ara/\n'
                              'beringin, tinggi batang\n'
                              'mencapai 25-30 meter,\n'
                              'dengan diameter batang\n'
                              'sampai 2 meter(6.6 kaki)',
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.2,
                        right: screenWidth * 0.05,
                        left: screenWidth * 0.05),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: const Color.fromARGB(255, 7, 52, 2),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.1),
                        ),
                        child: SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.16,
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.05),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: screenHeight * 0.04,
                        right: -screenWidth * 0.04,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/bigplant.png',
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.32,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Asplenium\n     nidus',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.03,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.2),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: const Color.fromARGB(255, 7, 52, 2),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.1),
                        ),
                        child: SizedBox(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.16,
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.05),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: screenHeight * 0.03,
                        right: -screenWidth * 0.04,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/bigp.png',
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.30,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Haworthia\n   faciata',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.03,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
