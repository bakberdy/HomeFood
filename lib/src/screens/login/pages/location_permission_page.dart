import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/home/pages/home_page.dart';

import '../../../widgets/bottom_navigation_bar.dart';

class AllowLocation extends StatelessWidget {
  const AllowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final constTexts = S.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Image.asset("assets/login_assets/location.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CustomNavigationBar()));
                },
                child: Text(constTexts.share_location)),
          ),
        ],
      ),
    );
  }
}
