import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/fill_name_page.dart';

class ChiefLogin extends StatelessWidget {
  const ChiefLogin({super.key});

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
                  height: 50,
                ),
                Center(
                    child: Image.asset("assets/login_assets/chief_login.png")),
                Text(
                  constTexts.login_chief_start_work,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  constTexts.login_chief_fill_form,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 120,
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
                      Navigator.push((context),
                          MaterialPageRoute(builder: (context) => FillName()));
                    },
                    child: Text(
                      constTexts.login_go_to_form,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          )),
    );
  }
}
