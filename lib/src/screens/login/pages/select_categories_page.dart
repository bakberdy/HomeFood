import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';

import 'doewnload_medicine_card_page.dart';

class SelectCategoriesFood extends StatefulWidget {
  const SelectCategoriesFood({super.key});

  @override
  State<SelectCategoriesFood> createState() => _SelectCategoriesFoodState();
}

class _SelectCategoriesFoodState extends State<SelectCategoriesFood> {
  void onPressedButton() {}

  List<SelectCategoryButton> availableCategories = [
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Завтраки",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Салаты",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Выпечки",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Второе блюдо",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "ПП",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Десерт",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Пицца",
    ),
    SelectCategoryButton(
      isButtonPressed: false,
      text: "Супы",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final constTexts = S.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                constTexts.select_category,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    height: 1.2),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                constTexts.select_category_description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Column(
                children: [
                  Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: availableCategories)
                ],
              )),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 40,
                child: FilledButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.orange),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) =>
                                const DownloadMedicineCard()));
                  },
                  child: Text(
                    constTexts.chief_registrtion_next_button,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectCategoryButton extends StatefulWidget {
  const SelectCategoryButton(
      {Key? key, required this.isButtonPressed, required this.text})
      : super(key: key);

  final bool isButtonPressed;
  final String text;

  @override
  State<SelectCategoryButton> createState() => _SelectCategoryButtonState();
}

class _SelectCategoryButtonState extends State<SelectCategoryButton> {
  late bool isButtonPressed;

  @override
  void initState() {
    super.initState();
    isButtonPressed = widget.isButtonPressed;
  }

  final buttonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    ),
    side: MaterialStateProperty.all(
      BorderSide(color: Colors.green, width: 2),
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  );

  final buttonStyle2 = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.green),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    ),
    side: MaterialStateProperty.all(
      BorderSide(color: Colors.green, width: 2),
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  );

  final textStyle = TextStyle(
    color: Colors.green,
    fontSize: 18,
  );

  final textStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: !isButtonPressed ? buttonStyle : buttonStyle2,
      onPressed: () {
        setState(() {
          isButtonPressed = !isButtonPressed;
        });
      },
      child: Text(
        widget.text,
        style: !isButtonPressed ? textStyle : textStyle2,
      ),
    );
  }
}
