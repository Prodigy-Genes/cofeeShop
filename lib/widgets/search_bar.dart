import 'package:coffee_shop/widgets/search_filter.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 62,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromRGBO(49, 49, 49, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/search.png',
                width: 28,
                height: 28,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              const Text(
                'Search coffee',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(152, 152, 152, 1),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Sora',
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          right: 0, 
          top: 2,   
          child: SearchFilter(),
        ),
      ],
    );
  }
}
