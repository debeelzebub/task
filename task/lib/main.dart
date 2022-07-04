

import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/homepage.dart';
import 'package:task/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {
      'homepage':(context) => const MyHome(),
      'profile':(context) => const Profile()
    },
   
  )
  );
}


