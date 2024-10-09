import 'package:coffee_shop/widgets/cappucino_index.dart';
import 'package:flutter/material.dart';

class CoffeeTypes extends StatefulWidget {
  final Function(int) onCoffeeSelected; // Callback to pass selected coffee

  const CoffeeTypes({super.key, required this.onCoffeeSelected});

  @override
  State<CoffeeTypes> createState() => _CoffeeTypesState();
}

class _CoffeeTypesState extends State<CoffeeTypes> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55, // Set height for the horizontal scroll
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              // If it's not the last item, add some space
              return Padding(
                padding: const EdgeInsets.only(right: 15), // Space between items
                child: _buildCoffeeType(context, _getCoffeeName(index), index),
              );
            },
          ),
        ),
        // Render CappuccinoIndex if "Cappuccino" is selected
        if (selectedIndex == 0) const CappuccinoIndex(),
      ],
    );
  }

  String _getCoffeeName(int index) {
    switch (index) {
      case 0:
        return 'Cappucino';
      case 1:
        return 'Macchiato';
      case 2:
        return 'Latte';
      case 3:
        return 'Americano';
      default:
        return '';
    }
  }

  Widget _buildCoffeeType(BuildContext context, String coffeeName, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });

        widget.onCoffeeSelected(index); // Call the callback

        
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected
              ? const Color.fromRGBO(198, 124, 78, 1) // Selected color
              : Colors.white, // Unselected color
          border: Border.all(color: Colors.grey.withOpacity(0.25)),
        ),
        child: Text(
          coffeeName,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sora',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
