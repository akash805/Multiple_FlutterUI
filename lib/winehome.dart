import 'package:flutter/material.dart';

void main() {
  runApp(const WinesHome());
}

class WinesHome extends StatelessWidget {
  const WinesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wines Home UI',
      home: MyHomePage(title: 'Wines Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the controller when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity, // Use full width
            height: 150,
            child: Card(
              color: const Color(0xFF030818),
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 44),
                          child: Text(
                            'Hi Syaa',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30, top: 10),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TabBar(
                      dividerColor: const Color(0xFF030818),
                      controller: _tabController,
                      tabs: const [
                        Tab(text: 'All'),
                        Tab(text: 'Red Wine'),
                        Tab(text: 'White Wine'),
                        Tab(text: 'Chandon'),
                      ],
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                // Search Bar
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF030818), // Background color
                      borderRadius:
                          BorderRadius.circular(30), // Rounded corners
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none, // Removes underline
                              ),
                                style:TextStyle(color:Colors.white)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // TabBarView content
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:30),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine1.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:10),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine2.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:30,left:30),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine3.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:32,left:10),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine4.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:26),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine5.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:10),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine6.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:24),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine7.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:10),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine8.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:22),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine9.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:28,left:10),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine10.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine1.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine2.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine3.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine4.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine5.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine6.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine7.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine8.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine9.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine10.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine1.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine2.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine3.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine4.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine5.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine6.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine7.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine8.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine9.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine10.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine1.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine2.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine3.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine4.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine5.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine6.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine7.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine8.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine9.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        color: const Color(0xFF030818),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: SizedBox(
                                          width: 180,
                                          height: 220,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Positioned(
                                                top: -40,
                                                child: Transform.rotate(
                                                  angle: 0.2,
                                                  child: Image.asset(
                                                    'assets/wine10.png',
                                                    width: 160,
                                                    height: 180,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 140,
                                                child: Text(
                                                  'Royal wine',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 160,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  'Classic Taste',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                top: 178,
                                                // Adjust position to be under "Royal wine"
                                                child: Text(
                                                  "\$98",
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
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
          ),
        ],
      ),
    );
  }
}
