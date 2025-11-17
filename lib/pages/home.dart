import 'package:flutter/material.dart';
import '../components/bottomNavBar.dart';
import '../components/restaurantCard.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({super.key});

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              // Search bar on the left
              Expanded(
                flex: 3,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(

                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Location in center
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    // Clickable for later use
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.location_on, color: Colors.deepOrange, size: 18),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          "Chicago, Illinois",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 2),
                      const Icon(Icons.arrow_drop_down_sharp, color: Colors.grey, size: 18),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Notification icon on the right
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.notifications_outlined, color: Colors.black, size: 20),
              ),
            ],
          ),
        ),
      ),
      // ---------------- PAGE CONTENT ----------------
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -20,
                            top: -10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/leps.png",
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const SizedBox.shrink();
                                },
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Colors.black),
                              SizedBox(width: 6),
                              Text(
                                "4.8",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Vegetables\n& Meals",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            child: const Text("Buy now"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 70,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Full Menu",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _categoryIcon(Icons.fastfood, "Burger"),
                  _categoryIcon(Icons.local_pizza, "Pizza"),
                  _categoryIcon(Icons.local_fire_department, "Fries", selected: true),
                  _categoryIcon(Icons.local_cafe, "Drinks"),
                  _categoryIcon(Icons.set_meal, "Meat"),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Order From The",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(right: 20),
                  children: [
                    _foodCard("French Fries", "assets/images/leps.png"),
                    const SizedBox(width: 15),
                    _foodCard("Sandwich", "assets/images/leps.png"),
                    const SizedBox(width: 15),
                    _foodCard("Burger", "assets/images/leps.png"),
                    const SizedBox(width: 15),
                    _foodCard("Pizza", "assets/images/leps.png"),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Popular Restaurants",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              RestaurantCard(
                imageUrl: "assets/images/leps.png",
                name: "Golden Spoon Restaurant",
                category: "Italian",
                subCategory: "Pizza & Pasta",
                deliveryTime: "25-30 min",
                deliveryType: "Free Delivery",
                rating: 4.8,
                onTap: () {},
              ),

              RestaurantCard(
                imageUrl: "assets/images/leps.png",
                name: "Spice Garden",
                category: "Asian",
                subCategory: "Chinese & Thai",
                deliveryTime: "20-25 min",
                deliveryType: "Express Delivery",
                rating: 4.6,
                onTap: () {},
              ),

              RestaurantCard(
                imageUrl: "assets/images/leps.png",
                name: "Burger House",
                category: "American",
                subCategory: "Fast Food",
                deliveryTime: "15-20 min",
                deliveryType: "Free Delivery",
                rating: 4.9,
                onTap: () {},
              ),

              RestaurantCard(
                imageUrl: "assets/images/leps.png",
                name: "Fresh Bites Cafe",
                category: "Healthy",
                subCategory: "Salads & Smoothies",
                deliveryTime: "30-35 min",
                deliveryType: "Standard Delivery",
                rating: 4.7,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),

      // -------------- SEPARATE NAVBAR HERE ---------------
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _categoryIcon(IconData icon, String label, {bool selected = false}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: selected ? Colors.green : Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: Icon(icon,
              color: selected ? Colors.white : Colors.black, size: 24),
        ),
        const SizedBox(height: 6),
        Text(label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500))
      ],
    );
  }

  Widget _foodCard(String title, String imageUrl) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(.1),
              offset: const Offset(0, 4))
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade200,
                    child: const Icon(Icons.fastfood, size: 50),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Icon(Icons.star, size: 14, color: Colors.amber),
              SizedBox(width: 4),
              Text("4.8", style: TextStyle(fontSize: 12)),
            ],
          ),
          const Spacer(),
          Text("Buy now",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange.shade400)),
        ],
      ),
    );
  }
}
