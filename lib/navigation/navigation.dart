import 'package:coffee_shop/screens/home/home.dart';
import 'package:flutter/material.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  // PageController to control the PageView
  final PageController _pageController = PageController();

  // Index of the selected screen (initially 0 for Home)
  int _selectedIndex = 0;

  // List of screens to switch between
  final List<Widget> _screens = [
    const Home(),
    const FavoritesScreen(),
    const CartScreen(),
    const NotificationsScreen(),
  ];

  // Function to handle tab selection
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _screens,
      ),
      bottomNavigationBar: Container(
        height: 119,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), 
              topRight: Radius.circular(35), 
            ),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, 'home', 'assets/icons/home.png'),
            _buildNavItem(1, 'favorites', 'assets/icons/heart.png'),
            _buildNavItem(2, 'cart', 'assets/icons/bag.png'),
            _buildNavItem(3, 'notifications', 'assets/icons/bell.png'),
          ],
        ),
      ),
    );
  }

  // Widget for each navigation item
  Widget _buildNavItem(int index, String label, String assetPath) {
    bool isSelected = _selectedIndex == index; // Check if the item is selected
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => _onTabSelected(index),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image.asset(
              assetPath,
              width: 28,
              height: 28,
              color: isSelected
                  ? const Color.fromRGBO(198, 124, 78, 1)
                  : const Color.fromRGBO(141, 141, 141, 1),
            ),
          ),
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 20,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(198, 124, 78, 1),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
      ],
    );
  }
}

// Placeholder screen for Favorites
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Favorites Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Placeholder screen for Cart
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Cart Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Placeholder screen for Notifications
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
