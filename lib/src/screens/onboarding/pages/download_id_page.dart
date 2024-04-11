import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/local/generated/l10n.dart';
import 'package:myapp/src/screens/login/pages/doewnload_medicine_card_page.dart';


class DownloadID extends StatelessWidget {
  const DownloadID({super.key});

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
              const SizedBox(height: 20,),
          
              Text(constTexts.chief_registrtion_upload_id_card,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 20,),
              Text(constTexts.chief_registrtion_upload_frontof_id_card,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
          
                ),),
              const SizedBox(height: 20,),
              Center(child: Image.asset("assets/login_assets/ID.png")),
              const SizedBox(height: 120,),
              SizedBox(
                height: 40,
                child: FilledButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.orange),
                    shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  onPressed: (){
                    Navigator.push((context), MaterialPageRoute(builder:  (context) => DownloadMedicineCard()));
          
                  },
                  child: Text(constTexts.chief_registrtion_upload, style: const TextStyle(color: Colors.white, fontSize: 16),),
                ),
              ),
              const SizedBox(height: 100,),
          
            ],
          ),
        ),
      ),
    );
  }
}


class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late CameraController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.medium);

    _controller.addListener(() {
      if (_controller.value.hasError) {
        print('Camera error ${_controller.value.errorDescription}');
      }

      if (mounted && _controller.value.isInitialized) {
        setState(() {
          _isInitialized = true;
        });
      }
    });

    try {
      await _controller.initialize();
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Container();
    }

    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: CameraPreview(_controller),
    );
  }
}