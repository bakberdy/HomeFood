import 'package:flutter/material.dart';

class IncreaseDecreaseButton extends StatelessWidget {
  const IncreaseDecreaseButton({super.key,  required this.n, required this.increasingButtonPressed, required this.decreasingButtonPressed});
  final VoidCallback increasingButtonPressed;
  final VoidCallback decreasingButtonPressed;
  final int n;



  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(79, 180, 119, 0.15),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed:
            decreasingButtonPressed,
            icon: const Icon(
              Icons.horizontal_rule,
              size: 30,
              color: Colors.green,
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        Container(
          width: 60,alignment: Alignment.center,
          child: Text(n.toString(),
            style: const TextStyle(
              color: Color(0xFF717171),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),),
        ),
        Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(79, 180, 119, 0.15),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: increasingButtonPressed,
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.green,
            ),
            alignment: Alignment.topLeft,
          ),
        ),
      ],
    );

  }
}
