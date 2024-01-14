import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class call extends StatelessWidget {
  void _makePhoneCall() async {
    const phoneNumber = 'tel:91 8848561448'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  const call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Animal control center '),
        ),

        body: Center(
          child: ElevatedButton(
            onPressed: _makePhoneCall,
            child: Text('customer care'),
          ),
        ),
    );
  }
}