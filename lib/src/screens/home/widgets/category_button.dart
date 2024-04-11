import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton(
      {Key? key,
      required this.categoryName,
      required this.categoryPicturePath,
      required this.onPressed,
      required this.isPressed})
      : super(key: key);

  final String categoryName;
  final String categoryPicturePath;
  final VoidCallback onPressed;
  final isPressed;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  final textColorPressed = const TextStyle(color: Colors.orange);
  final textColorDefault = const TextStyle(
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    bool isPressed = widget.isPressed;
    return SizedBox(
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: 90,
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(widget.categoryPicturePath),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(widget.categoryName,
                  style: isPressed ? textColorPressed : textColorDefault),
            ],
          ),
        ),
      ),
    );
  }
}
