import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


// 
class image extends StatefulWidget {
  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {
  late ImagePicker _imagePicker;
  late XFile _imageFile;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
    _imageFile = XFile(""); // Initialize with an empty image path
  }

  Future<void> _pickImage() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = image;
      });
      _navigateToImageView();
    }
  }

  void _navigateToImageView() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ImageViewScreen(imagePath: _imageFile.path),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _imageFile.path.isEmpty
                ? Text('No image selected.')
                : Image.file(File(_imageFile.path)),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  final String imagePath;

  const ImageViewScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: Center(
        child: Image.file(File(imagePath)),
      ),
    );
  }
}