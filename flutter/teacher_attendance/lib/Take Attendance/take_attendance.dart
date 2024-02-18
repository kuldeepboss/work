/// CameraScreen.dart
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({ Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  late CameraController _cameraController;

  late Future<void> cameraValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cameras[0],ResolutionPreset.high);
    cameraValue = _cameraController.initialize();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
              future: cameraValue,
              builder: (context,snapshot) {
                if(snapshot.connectionState==ConnectionState.done){
                  return CameraPreview(_cameraController);
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                }
              }
          )
        ],
      ),
    );
  }
}