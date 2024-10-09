import 'package:coffee_shop/widgets/button.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  final double totalPayment = 5.99;
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 160,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/icons/money.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 112,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.05)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.09,
                      padding: const EdgeInsets.all(3.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(64),
                          color: const Color.fromRGBO(198, 124, 78, 1)),
                      child: const Text(
                        'Cash',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      '\$ $totalPayment',
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 73, 73, 73)),
                          textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 190,),
              Image.asset('assets/icons/more.png',width: 24,height: 24,)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // Buy Now button on the right
          SizedBox(
            width: 390,
            height: 62,
            child: Button(
              text: 'Order',
              onpressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
