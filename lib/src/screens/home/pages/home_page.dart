import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/widgets/categories_bar_widget.dart';
import 'package:myapp/src/screens/home/widgets/category_button.dart';
import 'package:myapp/src/screens/home/widgets/chief_choosing_button.dart';
import 'package:myapp/src/screens/home/widgets/menu_items_bar.dart';
import 'package:myapp/src/screens/home/widgets/photo_scrolling.dart';
import 'package:myapp/src/screens/home/widgets/search_bar.dart';

import '../classes/ChiefClass.dart';
import '../widgets/image_on_top.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> selectedCategories = [
    {"isPressed": false, "category_name": "Завтраки"},
    {"isPressed": false, "category_name": "Вторые"},
    {"isPressed": false, "category_name": "Супы"},
    {"isPressed": false, "category_name": "Десерты"},
    {"isPressed": false, "category_name": "Выпечки"},
  ];
  @override
  Widget build(BuildContext context) {
    bool isPressedAnyButton() {
      for (var element in selectedCategories) {
        if (element.containsValue(true)) {
          return true;
        }
      }
      return false;
    }

    final List<CategoryButton> categories = [
      CategoryButton(
        categoryName: "Завтраки",
        categoryPicturePath: "assets/home_page_assets/breakfast.png",
        onPressed: () {
          setState(() {
            selectedCategories[0]["isPressed"] =
                !selectedCategories[0]["isPressed"]!;
          });
        },
        isPressed: selectedCategories[0]["isPressed"],
      ),
      CategoryButton(
        categoryName: "Вторые",
        categoryPicturePath: "assets/home_page_assets/second.png",
        onPressed: () {
          setState(() {
            selectedCategories[1]["isPressed"] =
                !selectedCategories[1]["isPressed"]!;
          });
        },
        isPressed: selectedCategories[1]["isPressed"],
      ),
      CategoryButton(
        categoryName: "Супы",
        categoryPicturePath: "assets/home_page_assets/soup.png",
        onPressed: () {
          setState(() {
            selectedCategories[2]["isPressed"] =
                !selectedCategories[2]["isPressed"]!;
          });
        },
        isPressed: selectedCategories[2]["isPressed"],
      ),
      CategoryButton(
        categoryName: "Десерт",
        categoryPicturePath: "assets/home_page_assets/desert.png",
        onPressed: () {
          setState(() {
            selectedCategories[3]["isPressed"] =
                !selectedCategories[3]["isPressed"]!;
          });
        },
        isPressed: selectedCategories[3]["isPressed"],
      ),
      CategoryButton(
        categoryName: "Выпечки",
        categoryPicturePath: "assets/home_page_assets/bakery.png",
        onPressed: () {
          setState(() {
            selectedCategories[4]["isPressed"] =
                !selectedCategories[4]["isPressed"]!;
          });
        },
        isPressed: selectedCategories[4]["isPressed"],
      ),
    ];

    List favoriteFoods = [
      {
        "name": "Панкейки",
        "pathToPicture": "assets/food_images/pancake.png",
        "minPrice": "500"
      },
      {
        "name": "Борщ",
        "pathToPicture": "assets/food_images/borsh.png",
        "minPrice": "500"
      },
      {
        "name": "Жаркое",
        "pathToPicture": "assets/food_images/zharkoe.jpg",
        "minPrice": "500"
      },
    ];

    List sampleDishes = [
      {
        "name": "Панкейки",
        "pathToPicture": "assets/food_images/pancake.png",
      },
      {
        "name": "Борщ",
        "pathToPicture": "assets/food_images/borsh.png",

      },
    ];
    List sampleChiefs =  [
        Chief(chiefPhoto: ['assets/food_images/pancake.png','assets/food_images/borsh.png',], chiefFullName: 'Аида Слямхан', dishPrice: 400, deliveryTime: 5, chiefRating: 4.9),
        Chief(chiefPhoto: ['assets/food_images/borsh.png','assets/food_images/pancake.png'], chiefFullName: 'Сара Максатовна', dishPrice: 500, deliveryTime: 10, chiefRating: 4.5),
        Chief(chiefPhoto: ['assets/food_images/pancake.png','assets/food_images/borsh.png'], chiefFullName: 'Асель Айдарова', dishPrice: 900, deliveryTime: 3, chiefRating: 4.3),
        Chief(chiefPhoto: ['assets/food_images/zharkoe.jpg','assets/food_images/borsh.png'], chiefFullName: 'Сабира Каткин', dishPrice: 7200, deliveryTime: 8, chiefRating: 2.5),
        Chief(chiefPhoto: ['assets/food_images/pancake.png','assets/food_images/borsh.png'], chiefFullName: 'Бакберди Есентай', dishPrice: 9000, deliveryTime: 15, chiefRating: 5.0),
    ];


    List<String> photos = [
        "assets/home_page_assets/photo1.jpg",
       "assets/home_page_assets/photo2.jpg",
        "assets/home_page_assets/photo3.jpg",
        "assets/home_page_assets/photo4.jpg",
    ];

    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
          child: SearchBarWidget(),
        ),
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(media.height * 0.07),
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //scrollDirection: Axis.horizontal,
          children: [
            ScrollPhotosWidget(height:140.0, photos: photos),
            CategoriesBar(
              categories: categories,
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.vertical,
              isNotVisible: isPressedAnyButton(),
              foods: favoriteFoods,
              nameOfBar: "Избранные",
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.horizontal,
              isNotVisible:
                  isPressedAnyButton() && !selectedCategories[0]['isPressed']!,
              foods: sampleDishes,
              nameOfBar: "Завтраки",
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.horizontal,
              isNotVisible:
                  isPressedAnyButton() && !selectedCategories[1]['isPressed']!,
              foods: sampleDishes,
              nameOfBar: "Вторые",
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.horizontal,
              isNotVisible:
                  isPressedAnyButton() && !selectedCategories[2]['isPressed']!,
              foods: sampleDishes,
              nameOfBar: "Супы",
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.horizontal,
              isNotVisible:
                  isPressedAnyButton() && !selectedCategories[3]['isPressed']!,
              foods: sampleDishes,
              nameOfBar: "Десерт",
            ),
            MenuItemsBar(
              chiefs: sampleChiefs,
              scrollDirection: Axis.horizontal,
              isNotVisible:
                  isPressedAnyButton() && !selectedCategories[4]['isPressed']!,
              foods: sampleDishes,
              nameOfBar: "Выпечки",
            ),
            SizedBox(
              height: media.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
