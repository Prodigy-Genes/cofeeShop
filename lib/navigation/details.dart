import 'package:coffee_shop/screens/order/order.dart';
import 'package:coffee_shop/widgets/button.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String price;
  const Detail({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      height: 125,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Price information on the left
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(
                  fontFamily: 'Sora',
                  color: Color.fromRGBO(198, 124, 78, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          // Buy Now button on the right
          SizedBox(
            width: 220,
            height: 72,
            child: Button(
              text: 'Buy Now',
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Order(price: price)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
