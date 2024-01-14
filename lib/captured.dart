// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:capturedimage/camera_page.dart';

// class captured extends StatelessWidget {
//   const captured({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:    Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await availableCameras().then(
//               (value) => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => CameraPage(cameras: value,),
//                 ),
//               ),
//             );
//           },
//           child: const Text('Launch Camera'),
//         ),
//       ),
//     );
//   }
// }
// Certainly! If you want to capture an image using Flutter, you can use the camera package. Here's a basic example:


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:task/firstpage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CapturedImage(),
//     );
//   }
// }

class CapturedImage extends StatefulWidget {
  @override
  _CapturedImageState createState() => _CapturedImageState();
}

class _CapturedImageState extends State<CapturedImage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the camera controller
    _controller = CameraController(
      // Get the first available camera
      CameraDescription(
        name: "0",
        lensDirection: CameraLensDirection.back, sensorOrientation: int.fromEnvironment(""),
      ),
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Captured Image Example'),
      ),
      body: Column(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the Future is complete, display the camera preview
                return CameraPreview(_controller);
              } else {
                // Otherwise, display a loading indicator
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => location(),));
                          },
                          child: Text('next'),
                        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            // Ensure the controller is initialized before capturing the image
            await _initializeControllerFuture;

            // Capture the image and save it to a file
            XFile imageFile = await _controller.takePicture();

            // Navigate to a new screen to display the captured image
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayCapturedImage(imageFile.path),
              ),
            );
          } catch (e) {
            print("Error capturing image: $e");
          }
        },
        child: Icon(Icons.camera),
      ),
      
      
    );
  }
}

class DisplayCapturedImage extends StatelessWidget {
  final String imagePath;

  DisplayCapturedImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Captured Image'),
      ),
      body: Center(
        child: Image.file(File(imagePath)),
      ),
    );
  }
}


