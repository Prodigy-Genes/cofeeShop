import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.onpressed});
  final String text;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromRGBO(198, 124, 78, 1)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: 'Sora',
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
