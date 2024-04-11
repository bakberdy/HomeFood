import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/src/screens/home/pages/all_dishes_view_page.dart';
import 'package:myapp/src/screens/home/widgets/chief_choosing_button.dart';
import 'package:myapp/src/screens/home/widgets/menu_item_view.dart';

class MenuItemsBar extends StatelessWidget {
  const MenuItemsBar({
    super.key,
    required this.foods,
    required this.nameOfBar,
    required this.isNotVisible,
    required this.scrollDirection,
    required this.chiefs,
  });

  final nameOfBar;
  final foods;
  final isNotVisible;
  final scrollDirection;
  final chiefs;

  @override
  Widget build(BuildContext context) {
    if (isNotVisible) {
      return SizedBox();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(nameOfBar,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MenuDishesView(
                                chiefs: chiefs,
                                    categoryName: nameOfBar,
                                    foods: foods,
                                  ))));
                    },
                    child: const Text(
                      textAlign: TextAlign.right,
                      "Все",
                      style: TextStyle(
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
              itemBuilder: (context, index) {
                var mObj = foods[index] as Map? ?? {};
                return MenuItemView(
                  chiefs: chiefs,
                  mObj: mObj,
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
