import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<Camera>? cameras;

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController? _cameracontroller;
  var cameraValue;
  @override
  void initState() {
    super.initState();
    _cameracontroller = CameraController(
        cameras![0] as CameraDescription, ResolutionPreset.high);
    cameraValue = _cameracontroller?.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_cameracontroller!);
              }
              return CircularProgressIndicator();
            },
            future: cameraValue,
          )
        ],
      ),
    );
  }
}
