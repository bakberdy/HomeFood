import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/download_kitchen_page.dart';


class DownloadMedicineCard extends StatelessWidget {
  const DownloadMedicineCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
      height: 1.2,
    );
    final constTexts = S.of(context);
    final docTypesToUpload = [
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_1,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_2,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_3,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_4,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_5,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_6,
            style: textStyle,
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 5,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            constTexts.chief_registrtion_med_card_7,
            style: textStyle,
          ),
        ],
      )
    ];
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
                constTexts.chief_registrtion_upload_med_card,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                constTexts.chief_registrtion_upload_med_card_with_datas,
                style: const TextStyle(
                  height: 1.2,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: docTypesToUpload),
              ),

              
              SizedBox(
                height: 20,
              ),
              Center(child: Image.asset("assets/login_assets/ID.png")),
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
                            builder: (context) => DownloadKitchenPhotos()));
                  },
                  child: Text(
                    constTexts.chief_registrtion_upload,
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
