import 'package:flutter/material.dart';
import 'package:myapp/src/screens/basket/pages/basket_page.dart';
import 'package:myapp/src/screens/chiefs/pages/chief_page.dart';
import 'package:myapp/src/screens/home/pages/home_page.dart';
import 'package:myapp/src/screens/profile/pages/profile_page.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ChiefPage(),
    const BasketPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.kitchen_outlined), label: 'Chief'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Basket'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
