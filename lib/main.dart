import 'package:coffee_shop/navigation/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Navigations()
    );
  }
}
