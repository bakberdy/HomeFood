import 'package:flutter/material.dart';

class PhotoToHomePage extends StatelessWidget {
  const PhotoToHomePage({super.key, required this.pathToPhoto,required this.height});
  final pathToPhoto;
  final height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: 300,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                pathToPhoto,
              )),
        ),
      ),
    );
  }
}
