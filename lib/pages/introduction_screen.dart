import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to NigeEats",
          body: "Discover delicious food from your favorite restaurants and order with ease.",
          image: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.amber.shade200,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.restaurant, size: 100, color: Colors.black),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
            pageColor: Colors.white,
          ),
        ),
        PageViewModel(
          title: "Browse Menu",
          body: "Explore a wide variety of cuisines and dishes from top-rated restaurants.",
          image: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.menu_book, size: 100, color: Colors.black),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
            pageColor: Colors.white,
          ),
        ),
        PageViewModel(
          title: "Fast Delivery",
          body: "Get your favorite meals delivered quickly and safely to your doorstep.",
          image: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.delivery_dining, size: 100, color: Colors.black),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
            pageColor: Colors.white,
          ),
        ),
        PageViewModel(
          title: "Ready to Order?",
          body: "Start ordering now and enjoy delicious meals delivered to you!",
          image: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade200,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.shopping_cart, size: 100, color: Colors.black),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
            pageColor: Colors.white,
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const FoodHomePage()),
        );
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const FoodHomePage()),
        );
      },
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Icon(Icons.arrow_back, color: Colors.black),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      next: const Icon(Icons.arrow_forward, color: Colors.black),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.grey.shade300,
        activeColor: Colors.deepOrange,
        activeSize: const Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}

