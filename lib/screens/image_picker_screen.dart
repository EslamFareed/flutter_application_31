import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            image == null
                ? CircleAvatar(
                    backgroundImage: AssetImage("assets/image.jpg"),
                    radius: 100,
                  )
                : CircleAvatar(
                    backgroundImage: FileImage(File(image!.path)),
                    radius: 100,
                  ),
            ElevatedButton(
              onPressed: () async {
                ImagePicker picker = ImagePicker();
                XFile? file =
                    await picker.pickImage(source: ImageSource.gallery);
                // List<XFile?> images = await picker.pickMultiImage();
                picker.pickVideo(
                    source: ImageSource.camera,
                    maxDuration: const Duration(seconds: 5));
                // image = File(images[0]!.path);
                // print(images.length);
                setState(() {});
              },
              child: Text("Choose Image"),
            )
          ],
        ),
      ),
    );
  }
}
