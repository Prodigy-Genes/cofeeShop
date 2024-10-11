// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Man extends StatelessWidget {
  const Man({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 172,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.asset(
                'assets/images/delivery.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 189,
              height: 92,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'John Hawn',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Personal Courier',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () {
                print('Pressed');
              },
              child: Container(
                width: 100 * 0.75,
                height: 70,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black.withOpacity(0.09))),
                child: Center(
                  child: Image.asset(
                    'assets/icons/phone.png',
                    width: 34,
                    height: 34,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
