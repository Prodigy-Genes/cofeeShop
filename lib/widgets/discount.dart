import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 66,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.black.withOpacity(0.15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10,),
          Image.asset(
            'assets/icons/discount.png',
            width: 34,
            height: 34,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            '1 Discount is applied',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 60,),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/expand.png',
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
