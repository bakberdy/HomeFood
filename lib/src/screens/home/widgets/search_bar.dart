import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return   Container(
      alignment: Alignment.center,
      height: 80,
      //padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: const TextStyle(
            color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              vertical: 7.0, horizontal: 10.0),
          filled: true,
          fillColor: const Color(0xFFEFEFEF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Поиск блюд",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
