import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_31/screens/home_screen.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:video_player/video_player.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      // body: Center(
      //   child: _controller.value.isInitialized
      //       ? AspectRatio(
      //           aspectRatio: _controller.value.aspectRatio,
      //           child: VideoPlayer(_controller),
      //         )
      //       : Container(),
      // ),

      body: ElevatedButton(
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio.network(
                "https://file-examples.com/storage/feaade38c1651bd01984236/2017/11/file_example_MP3_700KB.mp3"),
            autoStart: true,
            showNotification: true,
          );
        },
        child: const Text("Play"),
      ),

      // body: Container(
      //   child: SfPdfViewer.network(
      //     'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
      //   ),
      // )
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushReplacementNamed(context, "home");
      //       // Navigator.pushReplacement(
      //       //     context,
      //       //     MaterialPageRoute(
      //       //       builder: (context) => HomeScreen(),
      //       //     ));
      //     },
      //     child: Text("Go To Home Screen"),
      //   ),
      // ),
    );
  }
}
