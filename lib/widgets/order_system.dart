import 'package:flutter/material.dart';
import 'package:coffee_shop/widgets/deliver_selected.dart';

class OrderSystem extends StatefulWidget {
  final String price;
  const OrderSystem({super.key, required this.price});

  @override
  State<OrderSystem> createState() => _OrderSystemState();
}

class _OrderSystemState extends State<OrderSystem> {
  bool isDeliverSelected = true; // Initially "Deliver" is selected
  bool isPickupSelected = false; // "Pick up" is not selected initially

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Deliver and Pick Up buttons
        Container(
          height: 58,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Deliver button
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDeliverSelected = true;
                    isPickupSelected = false; // Deselect "Pick up"
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isDeliverSelected
                        ? const Color.fromRGBO(198, 124, 78, 1)
                        : null,
                  ),
                  child: Text(
                    'Deliver',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 20,
                      fontWeight:
                          isDeliverSelected ? FontWeight.bold : FontWeight.w400,
                      color: isDeliverSelected ? Colors.white : Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Pick up button
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPickupSelected = true;
                    isDeliverSelected = false; // Deselect "Deliver"
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isPickupSelected
                        ? const Color.fromRGBO(198, 124, 78, 1)
                        : null,
                  ),
                  child: Text(
                    'Pick up',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 20,
                      fontWeight:
                          isPickupSelected ? FontWeight.bold : FontWeight.w400,
                      color: isPickupSelected ? Colors.white : Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Conditionally render DeliverSelected
        if (isDeliverSelected)
          DeliverSelected(
            price: widget.price,
          ),
      ],
    );
  }
}
