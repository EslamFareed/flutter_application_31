import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late List<CameraDescription> _cameras;
  CameraController? controller;
  @override
  void initState() {
    getAvailableCameras();
    super.initState();
  }

  getAvailableCameras() async {
    _cameras = await availableCameras();

    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null) {
      return Scaffold(
        body: Center(
          child: Text("No Camera Available"),
        ),
      );
    }
    return Scaffold(
      body: CameraPreview(controller!),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // XFile file = await controller!.takePicture();
        },
        child: Icon(Icons.camera),
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
