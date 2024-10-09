// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class UserLocation extends StatelessWidget {
  final String Location;
  final VoidCallback onpressed;

  const UserLocation({
    super.key,
    required this.Location,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: onpressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, 
          ),
          child: Text(
            Location,
            style: const TextStyle(
              fontSize: 18,
              color: Color.fromRGBO(221, 221, 221, 1),
              fontWeight: FontWeight.w600,
              fontFamily: 'Sora',
            ),
          ),
        ),
        const SizedBox(width: 4),  // Slight spacing between text and icon if needed
        Image.asset(
          'assets/icons/dropdown.png',
          width: 18,
          height: 18,
          color: const Color.fromRGBO(241, 241, 241, 1),
        ),
      ],
    );
  }
}
