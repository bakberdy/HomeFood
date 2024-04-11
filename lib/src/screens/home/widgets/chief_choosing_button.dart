import 'package:flutter/material.dart';

import '../classes/ChiefClass.dart';

class ChiefChoosinfButtonWidget extends StatelessWidget {
  const ChiefChoosinfButtonWidget(
      {super.key,
      required this.chief,required this.decreasingButtonPressed,required this.counter, required this.increasingButtonPressed, required this.onPressed});
  final Chief chief;
  final counter;
  final VoidCallback decreasingButtonPressed;
  final VoidCallback increasingButtonPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: const EdgeInsets.only(left: 10, top: 5,bottom: 5),
        width: media.width,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  image:  DecorationImage(image: AssetImage(chief.chiefPhoto[0]) , fit: BoxFit.cover)
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(chief.chiefFullName, style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black
                      ),),
                      width: media.width-240,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,size: 20,
                      color: Color(0xFF717171),
                    ),
                    Text(
                      chief.chiefRating.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                         color: Color(0xFF717171),
                    ),
                    textAlign: TextAlign.start,),
                  ],),
                const SizedBox(height: 5,),
                 Text("Время доставки: "+chief.deliveryTime.toString()+"-"+(chief.deliveryTime+2).toString()+" мин", style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFAFAFAF)
                ),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: media.width-300,
                        child: Text("T "+chief.dishPrice.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF515151)
                          ),)),
                    Row(
                      children: [
                        counter>0?
                        Container(
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(79, 180, 119, 0.15),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: decreasingButtonPressed,
                            icon: const Icon(
                              Icons.horizontal_rule,
                              size: 20,
                              color: Colors.green,
                            ),
                            alignment: Alignment.topLeft,
                          ),
                        ):SizedBox(width: 35,),
                        counter>0?Container(
                          width: 35,alignment: Alignment.center,
                          child: Text(counter.toString(),
                            style: TextStyle(
                              color: Color(0xFF717171),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                          ),),
                        ):Container(width: 35,),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(79, 180, 119, 0.15),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: increasingButtonPressed,
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.green,
                            ),
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ],
                    )

                  ],)
              ],)
          ],
        ),
      ),
    );
  }
}
