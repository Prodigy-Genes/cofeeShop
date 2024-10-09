import 'package:coffee_shop/widgets/coffee_types.dart';
import 'package:coffee_shop/widgets/search_bar.dart';
import 'package:coffee_shop/widgets/userlocation.dart';
import 'package:coffee_shop/widgets/userpicture.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCoffeeIndex = -1;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.02),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(19, 19, 19, 1),
                    Color.fromRGBO(49, 49, 49, 1)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 80,
                    right: 20,
                    child: Userpicture(
                      picture: 'assets/images/user.png',
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Location',
                          style: TextStyle(
                            color: Color.fromRGBO(183, 183, 183, 1),
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        UserLocation(
                          Location: 'Bilzen, Tanjungbalai',
                          onpressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const Positioned(top: 175, left: 30, child: Searchbar()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 40),
              child: CoffeeTypes(
                onCoffeeSelected: _onCoffeeSelected,
              ),
            ),
          ],
        ),
      ),
    );
  
  }

  // Callback to handle coffee selection
  void _onCoffeeSelected(int index) {
    setState(() {
      selectedCoffeeIndex = index;
    });
  }
}
