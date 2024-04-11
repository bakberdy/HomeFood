

import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/onboarding/pages/download_id_page.dart';

class EnterCode extends StatelessWidget {
  EnterCode({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final constTexts = S.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              constTexts.chief_registrtion_enter_code,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              constTexts.chief_registrtion_we_sent_code,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.7)),
            ),
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "123456",
              ),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 40,
              child: FilledButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DownloadID()));
                  },
                  child: Text(constTexts.chief_registrtion_next_button)),
            )
          ],
        ),
      ),
    );
  }
}
