// import 'dart:ffi';

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task/auth.dart';

import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatefulWidget {
 
String? ErrorMessage = '';
bool isLogin = true;



  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? ErrorMessage = '';
bool isLogin = true;
 final TextEditingController _ControllerEmail = TextEditingController();
 final TextEditingController _ControllerPassword = TextEditingController();

Future<void>signInWithEmailAndPassword()async
{
  try{
    await auth().SignInWithEmailAndPassword(email:_ControllerEmail.text, password: _ControllerPassword.text);
  }on FirebaseAuthException catch (e){
    setState(() {
      ErrorMessage = e.message;
    });
  }
}
Future<void>createwithWithEmailAndPassword()async
{
  try{
    await auth().CreateInWithEmailAndPassword(email:_ControllerEmail.text, password: _ControllerPassword.text);
  }on FirebaseAuthException catch(e){
    setState(() {
      ErrorMessage = e.message;
    });
  }
}

Widget _titile(){
  return Text('firebase auth');
}
Widget _entryField(
  String title,
  TextEditingController controller
){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: title
    ),
  );
}
Widget _ErrorMessage(){
  return Text(ErrorMessage ==''? '' : 'humm ? $ErrorMessage');
}
Widget _submitButton(){
  return ElevatedButton(onPressed: isLogin ? signInWithEmailAndPassword:createwithWithEmailAndPassword, child: Text( isLogin ? 'login': 'register'),);
}
Widget _loginOrRegisterButton(){
  return TextButton(onPressed: () {
    setState(() {
      isLogin=!isLogin;
    });
  }, child: Text(isLogin ? 'register instead' : 'login instead'),);
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
            _entryField('email',_ControllerEmail),
             _entryField('password',_ControllerPassword),
             _ErrorMessage(),
             _submitButton(),
             _loginOrRegisterButton()

            


          ]))
);
}
}