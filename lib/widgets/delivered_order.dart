import 'package:flutter/material.dart';

class DeliveredOrder extends StatelessWidget {
  const DeliveredOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 375,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.black.withOpacity(0.09))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 82,
              height: 72,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black.withOpacity(0.09))),
              child: Center(
                child: Image.asset(
                  'assets/icons/man.png',
                  width: 36.67,
                  height: 36.67,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              padding: const EdgeInsets.all(8),
              width: 229,
              height: 92,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivered your order',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'We deliver your goods to you in the shortes possible time.',
                    style: TextStyle(
                        fontFamily: 'Sora',
                        color: Colors.grey,
                        fontSize: 14,
                        ),
                  ),
                  
                ],
              ),
            )
          ],
        ));
  }
}
