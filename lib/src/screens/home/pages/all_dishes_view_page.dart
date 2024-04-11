import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/widgets/menu_item_in_all_menu_page.dart';

import '../widgets/search_bar.dart';

class MenuDishesView extends StatelessWidget {
  const MenuDishesView(
      {super.key, required this.foods, required this.categoryName,required this.chiefs});
  final foods;
  final categoryName;
  final chiefs;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(8),
            child: Container(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: media.height,
              child: ListView.builder(
                  itemCount: foods.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        children: [
                          SearchBarWidget(),
                          MenuItemViewToAllPages(
                            chiefs: chiefs,
                            mObj: foods[index])
                        ],
                      );
                    }
                    if (index == foods.length) {
                      return const SizedBox(
                        height: 200,
                      );
                    }
                    return MenuItemViewToAllPages(
                      chiefs: chiefs,
                      mObj: foods[index],
                    );
                  }),
            ),
          ]),
        ));
  }
}
