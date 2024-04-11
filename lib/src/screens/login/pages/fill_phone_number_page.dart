
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/fill_code_from_sms_page.dart';

class FillPhoneNumber extends StatelessWidget {
  FillPhoneNumber({super.key});

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
              constTexts.chief_registrtion_enter_phone_number,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              constTexts.chief_registrtion_phone_number,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.7)),
            ),
            TextFormField(
              inputFormatters: [
                MaskTextInputFormatter(mask: "+# (###) ###-##-##")
              ],
              keyboardType: TextInputType.phone,
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: constTexts.chief_registrtion_sample_phone_number,
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
                        MaterialPageRoute(builder: (context) => EnterCode()));
                  },
                  child: Text(constTexts.chief_registrtion_next_button)),
            )
          ],
        ),
      ),
    );
  }
}