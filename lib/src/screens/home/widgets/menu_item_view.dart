import 'package:flutter/material.dart';

import '../pages/dish_details.dart';

class MenuItemView extends StatelessWidget {
  const MenuItemView({super.key, required this.mObj,required this.chiefs});
  final mObj;
  final chiefs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => DishInfoPage(
                    chiefs: chiefs,
                      dishData: mObj))));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      mObj["pathToPicture"].toString(),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 15),
              child: Text(
                mObj["name"].toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(chiefs.length.toString() + " поваров",
                        style: const TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400)),
                    Text(
                      "от " + mObj["minPrice"].toString() + " KZT",
                      style: const TextStyle(
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
