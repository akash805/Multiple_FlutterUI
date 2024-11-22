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

class FoodItem {
  final String name;
  final String category;
  final String imagePath;

  FoodItem({required this.name, required this.category, required this.imagePath});
}

List<FoodItem> foodItems = [
  FoodItem(name: 'Margherita Pizza', category: 'pizza', imagePath: 'assets/pizza1.png'),
  FoodItem(name: 'Pepperoni Pizza', category: 'pizza', imagePath: 'assets/pizza2.png'),
  FoodItem(name: 'BBQ Chicken Pizza', category: 'pizza', imagePath: 'assets/pizza3.png'),
  FoodItem(name: 'Veggie Pizza', category: 'pizza', imagePath: 'assets/pizza4.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza5.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza6.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza7.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza8.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza9.png'),
  FoodItem(name: 'Hawaiian Pizza', category: 'pizza', imagePath: 'assets/pizza10.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger1.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger2.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger3.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger4.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger5.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger6.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger7.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger8.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger9.png'),
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger10.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich2.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sanwich1.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich3.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich4.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich5.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich6.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich7.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich8.png'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich9.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries1.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries2.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries3.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries4.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries5.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries6.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries7.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries8.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries9.png'),
  FoodItem(name: 'French Fries', category: 'french fries', imagePath: 'assets/frenchfries10.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta1.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta2.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta3.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta4.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta5.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta6.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta7.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta8.png'),
  FoodItem(name: 'Pasta', category: 'pasta', imagePath: 'assets/pasta9.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian1.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian2.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian3.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian4.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian5.png'),
  FoodItem(name: 'Manchurian', category: 'manchurian', imagePath: 'assets/manchurian6.png'),
  // Add more items as needed
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 /* int _selectedIndex = 0;*/

  String selectedCategory = "All";

  List<FoodItem> get filteredItems {
    if (selectedCategory.toLowerCase() == 'all') {
      return foodItems;
    } else {
      return foodItems.where((item) => item.category.toLowerCase() == selectedCategory.toLowerCase()).toList();
    }
  }


  void updateCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

 /* String getTitleText() {
    return '$selectedCategory Show';
  }
*/
  // Category-wise images and names
  /*final Map<String, List<Map<String, String>>> itemsByCategory = {
    'All': [
      {'image': 'assets/burger1.png', 'name': 'Classic Burger'},
      {'image': 'assets/pizza1.png', 'name': 'Margherita Pizza'},
      {'image': 'assets/sanwich1.png', 'name': 'Grilled Sandwich'},
      {'image': 'assets/sandwich2.png', 'name': 'Grilled Sandwich'},
    ],
    'Burger': [
      {'image': 'assets/burger1.png', 'name': 'Classic Burger'},
      {'image': 'assets/burger2.png', 'name': 'Cheese Burger'},
      {'image': 'assets/burger3.png', 'name': 'Double Burger'},
    ],
    'Pizza': [
      {'image': 'assets/pizza1.png', 'name': 'Margherita Pizza'},
      {'image': 'assets/pizza2.png', 'name': 'Pepperoni Pizza'},
      {'image': 'assets/pizza3.png', 'name': 'Veggie Pizza'},
    ],
    'Sandwich': [
      {'image': 'assets/sandwich1.png', 'name': 'Grilled Sandwich'},
      {'image': 'assets/sandwich2.png', 'name': 'Chicken Sandwich'},
      {'image': 'assets/sandwich3.png', 'name': 'Club Sandwich'},
    ],
  };*/

  // Filtered list based on selected category

  // Filtered list based on selected category
  /*List<FoodItem> get filteredItems {
    if (selectedCategory == 'All') {
      return foodItems;
    } else {
      return foodItems.where((item) => item.category == selectedCategory).toList();
    }
  }
*/

  void selectCard(String label){
    setState(() {
      selectedCategory = label;
    });
  }

  Color getCardColor(String label) {
    return label == selectedCategory
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
            const Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Stack(
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
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
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
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

            // Dynamically updated title
            const Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Food",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("See All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 13, 13),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            //Display filtered food items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  filteredItems.length,
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
                              filteredItems[index].imagePath,
                              width: 180,
                              height: 140,
                             // fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error, color: Colors.red);
                              },
                            ),

                            const SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  filteredItems[index].name,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  selectedCategory,
                                  style: const TextStyle(
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
             const Padding(
              padding: EdgeInsets.only(left: 28, right: 28, top: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearest Food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("See All",
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 13, 13),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  filteredItems.length,
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
                                  filteredItems[index].imagePath,
                                  width: 180,
                                  height: 140,
                                //  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      filteredItems[index].name,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selectedCategory,
                                      style: const TextStyle(
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
                                            fontWeight: FontWeight.bold, fontSize: 12),
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

         /* onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            // Handle navigation to different screens if needed
          }*/),
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
