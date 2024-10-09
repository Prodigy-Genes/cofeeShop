import 'package:coffee_shop/widgets/cappucino_ondelivery.dart';
import 'package:coffee_shop/widgets/discount.dart';
import 'package:coffee_shop/widgets/payment_summary.dart';
import 'package:flutter/material.dart';

class DeliverSelected extends StatefulWidget {
  final String price;
  const DeliverSelected({super.key, required this.price});

  @override
  State<DeliverSelected> createState() => _DeliverSelectedState();
}

class _DeliverSelectedState extends State<DeliverSelected> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Removed Expanded
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            width: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Delivery Address',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Jl. Kpg Sutoyo',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.036,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/icons/edit.png',
                                width: 10,
                                height: 11,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Edit Address',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.036,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/icons/add_note.png',
                                width: 10,
                                height: 11,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Add Note',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Sora',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/icons/Divider.png',
                  color: Colors.black.withOpacity(0.2),
                ),
                const SizedBox(height: 10),
                const CappucinoOndelivery(),
                const SizedBox(height: 15),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(20, 0, 0, 0),
            thickness: 6,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Discount(),
          ),
          const SizedBox(height: 20),
          PaymentSummary(price: widget.price),
        ],
      ),
    );
  }
}
