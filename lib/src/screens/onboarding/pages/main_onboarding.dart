import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/chief_login_page.dart';
import 'package:myapp/src/screens/login/pages/login_page.dart';
import 'package:myapp/src/screens/onboarding/widgets/onboard_info.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


class MainOnboarding extends StatefulWidget {
  const MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  final _controller = PageController();
  int _index = 0;


  @override
  Widget build(BuildContext context) {
    final constTexts = S.of(context);
    final List<OnboardInfo> onboardInfos = [
      OnboardInfo(constTexts.onboard_title_1, constTexts.onboard_description_1, "assets/onboarding_screen_assets/onboard_1.png"),
      OnboardInfo(constTexts.onboard_title_2, constTexts.onboard_description_2, "assets/onboarding_screen_assets/onboard_2.png"),
      OnboardInfo(constTexts.onboard_title_3, constTexts.onboard_description_3, "assets/onboarding_screen_assets/onboard_3.png")
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              alignment: Alignment.center,
              height: 550,
              width: 350,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _controller.animateToPage(index, duration: const Duration(seconds: 1), curve: Curves.ease);
                    _index = index;
                  });
                },
                controller: PageController(
                  initialPage: 0, viewportFraction: 1,
                ),
        
        
                children: [
                  OnboardingInfo(onBoardInfo: onboardInfos[0]),
                  OnboardingInfo(onBoardInfo: onboardInfos[1]),
                  OnboardingInfo(onBoardInfo: onboardInfos[2]),
                ],
              ),
            ),
        
            PageViewDotIndicator(
              borderRadius: BorderRadius.circular(3),
              currentItem: _index,
              count: 3,
              boxShape: BoxShape.rectangle,
              unselectedColor: Colors.orangeAccent,
              selectedColor: Colors.orange,
              onItemClicked: (index){
                setState(() {
                  _controller.animateToPage(index,duration: const Duration(seconds: 1), curve: Curves.ease);
                });
              },
        
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  height: 50,
                  child: FilledButton(
                    onPressed: (){
                      Navigator.push((context),
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(constTexts.onboard_login_button, style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  height: 50,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push((context), MaterialPageRoute(builder: (context) => ChiefLogin()));
                    },
                    child: Text(constTexts.onboard_chief_login_button, style: TextStyle(color: Colors.grey, fontSize: 20),),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            )
        
          ],
        ),
      ),
    );
  }
}
