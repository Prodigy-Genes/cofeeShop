import 'package:coffee_shop/navigation/orders.dart';
import 'package:coffee_shop/widgets/order_system.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  final String price;
  const Order({super.key, required this.price});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/back.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  width: 140,
                ),
                const Text(
                  'Order',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sora',
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: OrderSystem(
                price: widget.price,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Orders(), 
    );
  }
}
