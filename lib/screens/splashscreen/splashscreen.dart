// ignore_for_file: unused_element, annotate_overrides

import 'package:coffee_shop/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    _checkFirsttimeuser();
  }

  Future<void> _checkFirsttimeuser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirsttime = prefs.getBool('isFirsttime') ?? true;

    if (isFirsttime){

      // Show onboarding screen for first time user
      prefs.setBool('isFirsttime', false);
      Timer(const Duration(seconds: 3), (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Onboarding()));
      });
    }
    else{
      // Not first time user so skip onboarding
      Timer(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Onboarding()));
      });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/splashIcon.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(198, 124, 78, 1)), 
            ),
          ],
        ),
      ),
    );
  }
}