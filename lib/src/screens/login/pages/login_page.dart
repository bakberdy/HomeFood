import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/location_permission_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSendEmail = false;
  @override
  Widget build(BuildContext context) {
    final constTexts = S.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                constTexts.login_title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(constTexts.login_enter_email),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "home_food@gmail.com",
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              isSendEmail
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(constTexts.login_enter_code),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "123456",
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(
                      height: 5,
                    ),
              Text(
                !isSendEmail
                    ? constTexts.login_sending_message
                    : constTexts.login_sent_message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      if (isSendEmail == true) {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => AllowLocation()));
                      }
                      isSendEmail = true;
                    });
                  },
                  child: Text(
                    constTexts.login_send_message_button,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                constTexts.login_agreement,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    color: Colors.grey,
                    height: 2,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    constTexts.login_auth_with_other_services,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 100,
                    height: 2,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              isSendEmail
                  ? SizedBox(
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          constTexts.login_send_code_again,
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 100,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
