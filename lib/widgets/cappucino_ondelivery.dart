import 'package:flutter/material.dart';

class CappucinoOndelivery extends StatelessWidget {
  const CappucinoOndelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            child: Image.asset(
              'assets/images/cappucino.png',
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cappucino',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'with Chocolate',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 54,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/minus.png',
              width: 34,
              height: 34,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            '1',
            style: TextStyle(
              fontFamily: 'Sora',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/plus.png',
              width: 34,
              height: 34,
            ),
          ),
        ],
      ),
    );
  }
}
