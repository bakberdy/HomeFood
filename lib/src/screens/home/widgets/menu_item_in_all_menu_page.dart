import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/pages/dish_details.dart';

class MenuItemViewToAllPages extends StatelessWidget {
  const MenuItemViewToAllPages({super.key, required this.mObj,required this.chiefs});
  final mObj;
  final chiefs;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 15,
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
              height: 140,
              width: media.width,
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
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: media.width,
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
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
