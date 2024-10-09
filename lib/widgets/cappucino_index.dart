// ignore_for_file: avoid_print

import 'package:coffee_shop/screens/details/details.dart';
import 'package:flutter/material.dart';

class CappuccinoIndex extends StatelessWidget {
  const CappuccinoIndex({super.key});

  // Simulate an async method fetching data
  Future<List<Map<String, dynamic>>> fetchCappuccinoData() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate loading
    return [
      {
        'name': 'Cappuccino',
        'description': 'Delicious Italian coffee with a rich and creamy taste.',
        'imagePath': 'assets/images/cappucino.png',
        'rating': 4.5,
        'price': '\$ 4.99'
      },
      {
        'name': 'Cappuccino',
        'description': 'Strong and intense Italian coffee shot.',
        'imagePath': 'assets/images/cappucino.png',
        'rating': 4.8,
        'price': '\$ 3.49'
      },
      {
        'name': 'Cappuccino',
        'description': 'Smooth and creamy coffee with steamed milk.',
        'imagePath': 'assets/images/cappucino.png',
        'rating': 4.2,
        'price': '\$ 5.49'
      },
      {
        'name': 'Cappuccino',
        'description': 'A rich blend of coffee, chocolate, and milk.',
        'imagePath': 'assets/images/cappucino.png',
        'rating': 4.6,
        'price': '\$ 6.49'
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: fetchCappuccinoData(),
      builder: (BuildContext context,
          AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show loading indicator while fetching data
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          // Show an error message if fetching fails
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          // Show a message when there is no data
          return const Center(
            child: Text('No data available'),
          );
        } else {
          // Return the data for use in the parent widget (home.dart)
          return CappuccinoListView(data: snapshot.data!);
        }
      },
    );
  }
}

class CappuccinoListView extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const CappuccinoListView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // The parent (home.dart) should handle rendering the GridView or ListView
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildCoffeeCard(
                context,
                data[0]['name'],
                data[0]['description'],
                data[0]['imagePath'],
                data[0]['rating'],
                data[0]['price'],
              ),
              const SizedBox(width: 10),
              _buildCoffeeCard(
                context,
                data[1]['name'],
                data[1]['description'],
                data[1]['imagePath'],
                data[1]['rating'],
                data[1]['price'],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildCoffeeCard(
                context,
                data[2]['name'],
                data[2]['description'],
                data[2]['imagePath'],
                data[2]['rating'],
                data[2]['price'],
              ),
              const SizedBox(width: 10),
              _buildCoffeeCard(
                context,
                data[3]['name'],
                data[3]['description'],
                data[3]['imagePath'],
                data[3]['rating'],
                data[3]['price'],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCoffeeCard(
    BuildContext context,
    String coffeeName,
    String description,
    String imagePath,
    double rating,
    String price,
  ) {
    return Container(
      height: 279,
      width: 179,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Image covering 75% of the card
              Container(
                height: 179,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Star icon at the top left showing rating
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Remaining 25% of the card with coffee name, description, price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // Add button at the bottom right
                    GestureDetector(
                      onTap: () {
                        print('Add to cart');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      name: coffeeName,
                                      description: description,
                                      imagePath: imagePath,
                                      rating: rating,
                                      price: price,
                                    )));
                      },
                      child: Container(
                        width: 34,
                        height: 34,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(198, 124, 78, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
