import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:task/firstpage.dart';



class locate extends StatefulWidget {
  @override
  _locateState createState() => _locateState();
}

class _locateState extends State<locate> {
  // late CameraController _controller;
  late Position _currentPosition;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _getCurrentLocation();
  }

  Future<void> _initializeCamera() async {
    
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );

      setState(() {
        _currentPosition = position;
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stray Dog Tracker'),
      ),
      body:SingleChildScrollView(
      child: 
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Current Location: $_currentPosition'),
          _buildCameraPreview(),
          TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => location(),));
                          },
                          child: Text('next'),
                        ),
          
        ],
      ),
     ), );
  }

  Widget _buildCameraPreview() {
      return Container();
    }
   
  }

  @override
  void dispose() {
  }
