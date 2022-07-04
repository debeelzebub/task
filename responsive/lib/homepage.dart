// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/desktop_body.dart';
import 'package:responsive/mobile_body.dart';
import 'package:responsive/responsive_layout.dart';
import 'package:responsive/tv_body.dart';
import 'package:responsive/watch_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
    
      body: 
         Responsivelay( 
          watchbody:const WatchBody(),
          mobilebody: const MobileBody(),
          desktopbody: const DesktopBody(),
          tvbody: const TvBody(),),
    );
  }
}