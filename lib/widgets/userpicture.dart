import 'package:flutter/material.dart';

class Userpicture extends StatelessWidget {
  final String picture;
  const Userpicture({super.key, required this.picture});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55, 
      height: 55, 
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.asset(
          picture,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
