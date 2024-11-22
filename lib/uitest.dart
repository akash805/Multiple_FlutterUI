import 'package:flutter/material.dart';

void main() {
  runApp(const FoodFilterApp());
}

class FoodFilterApp extends StatelessWidget {
  const FoodFilterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FoodFilterScreen(),
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
  FoodItem(name: 'Burger', category: 'burger', imagePath: 'assets/burger.jpg'),
  FoodItem(name: 'Sandwich', category: 'sandwich', imagePath: 'assets/sandwich2.png'),
  FoodItem(name: 'Chilly Potato', category: 'chilly potato', imagePath: 'assets/food1.png'),
  // Add more items as needed
];

class FoodFilterScreen extends StatefulWidget {
  const FoodFilterScreen({super.key});

  @override
  FoodFilterScreenState createState() => FoodFilterScreenState();
}

class FoodFilterScreenState extends State<FoodFilterScreen> {
  String selectedCategory = 'all';

  List<FoodItem> get filteredItems {
    if (selectedCategory == 'all') {
      return foodItems;
    } else {
      return foodItems.where((item) => item.category == selectedCategory).toList();
    }
  }

  void updateCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Filter App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => updateCategory('all'),
                  child: const Text('All'),
                ),
                ElevatedButton(
                  onPressed: () => updateCategory('pizza'),
                  child: const Text('Pizza'),
                ),
                ElevatedButton(
                  onPressed: () => updateCategory('burger'),
                  child: const Text('Burger'),
                ),
                ElevatedButton(
                  onPressed: () => updateCategory('sandwich'),
                  child: const Text('Sandwich'),
                ),
                ElevatedButton(
                  onPressed: () => updateCategory('chilly potato'),
                  child: const Text('Chilly Potato'),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
              ),
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                final item = filteredItems[index];
                return Card(
                  child: Column(
                    children: [
                      Image.asset(item.imagePath, height: 80, fit: BoxFit.cover),
                      const SizedBox(height: 8),
                      Text(item.name, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
