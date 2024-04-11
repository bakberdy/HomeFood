import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/src/screens/home/widgets/image_on_top.dart';

// ignore: must_be_immutable
class ScrollPhotosWidget extends StatelessWidget {
  ScrollPhotosWidget({super.key,required this.photos,required this.height});
  final List<String> photos;
  final height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height+10,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        itemCount: photos.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return PhotoToHomePage(height: height, pathToPhoto: photos[index]);
        }


      ),
    );
  }
}
