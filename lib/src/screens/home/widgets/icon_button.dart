import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  IconTextButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.isPressed,
        required this.onPressed});

  final icon;
  final text;
  final isPressed;
  final VoidCallback onPressed;

  final initButtonColor = Color(0xFFEFEFEF);
  final pressedButtonColor = Color(0xFF2BAE20);
  final initTextColor = Colors.grey;
  final pressedTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 90,
        child:
        GestureDetector(
          onTap: onPressed,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
              height: 50,
              width: 50,
              child: Icon(icon, size: 24,color: isPressed?pressedTextColor:initTextColor),
            decoration: BoxDecoration(
              color: isPressed?pressedButtonColor:initButtonColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(height: 10,),
          Text(text, style: TextStyle(color: Color(0xFF717171),fontSize: 14, fontWeight: FontWeight.w400)),
        ]),
      ),
    );
  }
}
