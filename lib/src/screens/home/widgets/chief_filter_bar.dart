import 'package:flutter/material.dart';

import 'icon_button.dart';

class ChiefFilterBar extends StatelessWidget {
  ChiefFilterBar({super.key,  this.onPressed,required this.pressedButton});
  final onPressed;
  final pressedButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconTextButton(
          onPressed: ()=> onPressed(0),
          icon: Icons.location_on_sharp,
          text: "По адресу",
          isPressed: pressedButton[0],
        ),
        IconTextButton(
          onPressed: ()=> onPressed(1),
          icon: Icons.wallet,
          text: "По цене",
          isPressed: pressedButton[1],
        ),
        IconTextButton(
          onPressed: ()=> onPressed(2),
          icon: Icons.timelapse_outlined,
          text: "По времени",
          isPressed: pressedButton[2],
        ),
        IconTextButton(
          onPressed: ()=> onPressed(3),
          icon: Icons.star_border_purple500_sharp,
          text: "По рейтингу",
          isPressed: pressedButton[3],
        ),
      ],
    );
  }
}
