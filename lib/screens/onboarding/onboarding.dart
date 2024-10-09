// ignore_for_file: avoid_print

import 'package:coffee_shop/widgets/button.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/onboarding_image.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 315,
                child: Text(
                  'Coffee so good,\nyour taste buds\nwill love it. ',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Sora'),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'The best grain, the finest roast,\n the powerful flavor',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 62,
                width: 318,
                child: Button(
                    text: 'Get Started', onpressed: () => print('pressed')),
              )
            ],
          ),
        ));
  }
}
