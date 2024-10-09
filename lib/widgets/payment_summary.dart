import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final String price;
  final double totalPayment = 5.99;
  const PaymentSummary({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    double deliveryFee = 1.0;
    double canelledFee = 2.0;

    // Calculate total payment
    
    return Container(
      width: 360,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment Summary',
            style: TextStyle(
                fontFamily: 'Sora', fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Delivery Fee',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 140,
              ),
              Text(
                '\$ $canelledFee',
                style: const TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 2),
              ),
              Text(
                '\$ $deliveryFee',
                style: const TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Payment',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                ),
              ),
              Text(
                '\$ $totalPayment',
                style: const TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
