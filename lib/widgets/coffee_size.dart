import 'package:flutter/material.dart';

class CoffeeSize extends StatefulWidget {
  const CoffeeSize({super.key});

  @override
  State<CoffeeSize> createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  int selectedSizeIndex = -1; // To track the selected index

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedSizeIndex = 0;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 106,
            height: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: selectedSizeIndex == 0
                    ? const Color.fromRGBO(198, 124, 78, 1)
                    : Colors.grey.withOpacity(0.15),
              ),
              color: selectedSizeIndex == 0
                  ? const Color.fromRGBO(198, 124, 78, 1).withOpacity(0.15)
                  : Colors.white,
            ),
            child: Text(
              'S',
              style: TextStyle(
                  fontSize: 24,
                  color: selectedSizeIndex == 0
                      ? const Color.fromRGBO(198, 124, 78, 1)
                      : Colors.black,
                  fontFamily: 'Sora'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedSizeIndex = 1; // Set index for 'M'
            });
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 106,
            height: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: selectedSizeIndex == 1
                    ? const Color.fromRGBO(198, 124, 78, 1)
                    : Colors.grey.withOpacity(0.15),
              ),
              color: selectedSizeIndex == 1
                  ? const Color.fromRGBO(198, 124, 78, 1).withOpacity(0.15)
                  : Colors.white,
            ),
            child: Text(
              'M',
              style: TextStyle(
                  fontSize: 24,
                  color: selectedSizeIndex == 1
                      ? const Color.fromRGBO(198, 124, 78, 1)
                      : Colors.black,
                  fontFamily: 'Sora'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedSizeIndex = 2; // Set index for 'L'
            });
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 106,
            height: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: selectedSizeIndex == 2
                    ? const Color.fromRGBO(198, 124, 78, 1).withOpacity(0.15)
                    : Colors.grey.withOpacity(0.15),
              ),
              color: selectedSizeIndex == 2
                  ? const Color.fromRGBO(198, 124, 78, 1).withOpacity(0.05)
                  : Colors.white,
            ),
            child: Text(
              'L',
              style: TextStyle(
                  fontSize: 24,
                  color: selectedSizeIndex == 2
                      ? const Color.fromRGBO(198, 124, 78, 1)
                      : Colors.black,
                  fontFamily: 'Sora'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
