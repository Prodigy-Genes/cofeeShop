import 'package:coffee_shop/widgets/delivered_order.dart';
import 'package:coffee_shop/widgets/man.dart';
import 'package:flutter/material.dart';

class DeliveryMapNav extends StatefulWidget {
  const DeliveryMapNav({super.key});

  @override
  State<DeliveryMapNav> createState() => _DeliveryMapNavState();
}

class _DeliveryMapNavState extends State<DeliveryMapNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.black.withOpacity(0.09)),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            '10 minutes left',
            style: TextStyle(
                fontFamily: 'Sora', fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
                style: TextStyle(
                    fontSize: 14, color: Colors.grey, fontFamily: 'Sora'),
                children: [
                  TextSpan(text: 'Delivery to '),
                  TextSpan(
                      text: 'Jl. Kpg Sutoyo',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.bold))
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.green),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.green),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.green),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.black.withOpacity(0.09)),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const DeliveredOrder(),
          const SizedBox(
            height: 20,
          ),
          const Man()
        ],
      ),
    );
  }
}
