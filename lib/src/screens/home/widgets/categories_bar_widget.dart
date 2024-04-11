import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key, required this.categories}) : super(key: key);
  final categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Фильтр",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 0.2,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 0.2, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
