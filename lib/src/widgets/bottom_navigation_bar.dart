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
  //
  // void _onItemTapped(int index) {
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15),),
       ),

        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Главная'),
            BottomNavigationBarItem(icon: Icon(Icons.kitchen_outlined), label: 'Повары'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Корзина'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Профиль'),
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
  }}
