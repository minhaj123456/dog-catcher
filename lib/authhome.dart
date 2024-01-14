// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/auth.dart';

class autpage extends StatelessWidget {
   autpage({super.key});
  final User? user=auth().currentUser;

  Future<void> signOut() async{
    await auth().signOut();
  }
  Widget _titile(){
    return Text('firebase auth');
  }
  Widget _userId(){
    return Text(user?.email ?? 'user email');
    
  }
  Widget _signOutBotton(){
    return ElevatedButton(onPressed: signOut, child: _titile());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userId(),
            _signOutBotton()
          ],
        ),
      ),
    );
  }
}