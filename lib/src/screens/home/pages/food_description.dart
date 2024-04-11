import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/widgets/increase_decrease_buttons.dart';
import '../classes/ChiefClass.dart';
import '../widgets/photo_scrolling.dart';

class FoodDescriptionPage extends StatefulWidget {
  const FoodDescriptionPage({super.key,required this.chief, required this.counter,required this.increasingButtonPressed,required this.decreasingButtonPressed});
  final Chief chief;
  final int counter;
  final VoidCallback increasingButtonPressed;
  final VoidCallback decreasingButtonPressed;

  @override
  State<FoodDescriptionPage> createState() => _FoodDescriptionPageState();
}
class _FoodDescriptionPageState extends State<FoodDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    int n = widget.counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Описание еды",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8),
          child: Container(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 0, right: 15, left: 15),
              child: Row(children: [
                const SizedBox(width: 3,),
                const SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://avatars.mds.yandex.net/get-kino-vod-films-gallery/28788/47e2fd514411e18b76af786d7417062d/380x240"),),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Text(widget.chief.chiefFullName,
                    style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFF1B2F33),
                  ),),
                ),
                const Icon(
                  Icons.star_rate_rounded,size: 25,
                  color: Color(0xFF717171),
                ),
                Text(
                  widget.chief.chiefRating.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFF717171),
                  ),
                  textAlign: TextAlign.start,),
              ],),
            ),
            ScrollPhotosWidget(
              height: 180.0,
              photos: widget.chief.chiefPhoto,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                const Text("Блинчики с творогом (3 шт.)",
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xFF1B2F33),
                ),),
                const Text("Описание",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF1B2F33),),),
                const Text("Ну кто откажется от домашних вкусных блинов?! Хочу поделиться еще одним очень удачным рецептом. Блины выходят мягенькие и очень вкусные.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.3,
                    color: Color(0xFF5B5B5B),
                  )),
                SizedBox(height: 10,),
                const Text("Ингредиенты",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF1B2F33),),),
                const Text("Мука, соль, сода, кефир, яйцо, сахар, оливковое масло",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.3,
                      color: Color(0xFF5B5B5B),
                    )),
                SizedBox(height: 10,),
                const Text("Время приготовления", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF1B2F33),),),
                SizedBox(height: 5,),
                const Row(
                  children: [
                    Icon(Icons.watch_later_outlined, color: Color(0xFF5B5B5B)),
                    Text(" 25 минут",
                        style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.3,
                      color: Color(0xFF5B5B5B),
                    )),
                  ],
                ),
                SizedBox(height: 15,),
                Center(child: IncreaseDecreaseButton(n: widget.counter, increasingButtonPressed: widget.increasingButtonPressed, decreasingButtonPressed: widget.decreasingButtonPressed))

              ],),
            )
             ],
        ),
      ),
    );
  }
}
