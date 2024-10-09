import 'package:coffee_shop/navigation/details.dart';
import 'package:coffee_shop/widgets/coffee_size.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  final String description;
  final String imagePath;
  final double rating;
  final String price;

  const Details({
    super.key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.price,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          // Header with back icon, "Detail", and heart icon
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/back.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sora',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: isSelected
                      ? Image.asset(
                          'assets/icons/heart_filled.png',
                          width: 26,
                          height: 26,
                          color: Colors.red,
                        )
                      : Image.asset(
                          'assets/icons/heartz.png',
                          width: 26,
                          height: 26,
                          color: Colors.black,
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // SingleChildScrollView for the rest of the content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 276,
                    width: 375,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.description,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 28,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  widget.rating.toString(),
                                  style: const TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  '(230)',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 0),
                                  width: 54,
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.05),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/beans.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5 + 5,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 0),
                                  width: 54,
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.05),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/milk.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('assets/icons/divider.png'),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                                ),
                                TextSpan(
                                  text: ' Read more',
                                  style: TextStyle(
                                    color: Color.fromRGBO(198, 124, 78, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.only(left: 6),
                          child: const CoffeeSize(),) 
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Detail(price: widget.price),
    );
  }
}
