
import 'package:counter/login.dart';
import 'package:counter/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context) => const MyLogin(),
      'register':(context) => const MyReg()
 
      },
  ));
}

