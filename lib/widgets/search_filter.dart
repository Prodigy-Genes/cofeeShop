// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('pressed');
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 60,
        height: 61,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color.fromRGBO(198, 124, 78, 1)),
        child: Image.asset(
          'assets/icons/filter.png',
          width: 20,
          height: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
