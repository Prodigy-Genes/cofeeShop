import 'package:flutter/material.dart';

class DeliveryTopTab extends StatelessWidget {
  const DeliveryTopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 40,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: Colors.white),
            child: Center(
              child: Image.asset(
                'assets/icons/back.png',
                width: 24,
                height: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 270,
        ),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          child: Center(
            child: Image.asset(
              'assets/icons/gps.png',
              width: 24,
              height: 24,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
