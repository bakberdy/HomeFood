import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home/pages/food_description.dart';
import 'package:myapp/src/screens/home/widgets/chief_choosing_button.dart';
import 'package:myapp/src/screens/home/widgets/icon_button.dart';
import 'package:myapp/src/screens/home/widgets/search_bar.dart';

import '../widgets/chief_filter_bar.dart';

class DishInfoPage extends StatefulWidget {
  DishInfoPage({super.key, required this.dishData,required this.chiefs});
  final dishData;
  final chiefs;



  @override
  State<DishInfoPage> createState() => _DishInfoState();
}

class _DishInfoState extends State<DishInfoPage> {
  List pressedButton = [
    true,
    false,
    false,
    false
  ];

  List<int> numsOfDishes = [];

  @override
  Widget build(BuildContext context) {
    void onPressed(int buttonIndex){
      print("pressed");
        setState(() {
         pressedButton[buttonIndex]=true;
          for (int i = 0; i < pressedButton.length; i++) {
            if (buttonIndex != i) {
              pressedButton[i] = false;
            }
          }
        });

    }
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Выберите повара",
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              const SearchBarWidget(),
              Container(
                height: 160,
                width: media.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        widget.dishData["pathToPicture"].toString(),
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 3, left: 0),
                child: Text(
                  widget.dishData["name"].toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10,),
              ChiefFilterBar(pressedButton: pressedButton,onPressed: onPressed,),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.chiefs.length,
                itemBuilder: (context, index) {
                  numsOfDishes.add(0);
                  var chief = widget.chiefs[index];
                  return ChiefChoosinfButtonWidget(
                    counter: numsOfDishes[index],
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>FoodDescriptionPage(
                            chief: chief,
                            counter: numsOfDishes[index],
                            increasingButtonPressed: (){
                                  setState(() {
                                  numsOfDishes[index]++;
                                });
                      }, decreasingButtonPressed:  (){
                          setState(() {
                          if(numsOfDishes[index]>0){
                          numsOfDishes[index]--;
                          }
                          });},)
                       )
                      );
                    },
                    
                    chief: chief,
                    increasingButtonPressed: (){
                      setState(() {
                        numsOfDishes[index]++;
                      });
                    },
                    
                    decreasingButtonPressed: (){
                      setState(() {
                        if(numsOfDishes[index]>0){
                          numsOfDishes[index]--;
                        }
                      });
                    },
                  );
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                        backgroundColor: MaterialStatePropertyAll(Color(0xFFF34417)),
                    ),
                      onPressed: (){},
                      child: Text("Добавить в корзину",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500, fontSize: 18),))),
              SizedBox(height: 100,)

            ]),
          ),
        ));
  }
}
