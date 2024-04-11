import 'package:flutter/material.dart';

class OnboardingInfo extends StatelessWidget {
  final onBoardInfo;

  const OnboardingInfo({super.key,required this.onBoardInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(onBoardInfo.picture),
        const SizedBox(height: 25,),
        Text(
          onBoardInfo.pageName,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.start,),
        const SizedBox(height: 25,),
        SizedBox(
          width: 350,
          child: Text(
            onBoardInfo.description,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
        ),

      ],
    );
  }
}

class OnboardInfo{
  final pageName;
  final description;
  final picture;
  OnboardInfo(this.pageName, this.description, this.picture);
}

