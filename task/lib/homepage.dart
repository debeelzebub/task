import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blue[100]),
          child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(alignment: Alignment.topCenter,
                      children: [
                        Container(
                        padding: const EdgeInsets.all(70),
                          child: const CircleAvatar(
                            radius: 150,
                            backgroundImage: AssetImage("assets/bp.jpg")
                            ),
                        ),
                        Container(
                          
                          padding: const EdgeInsets.only(
                            left:50 ,
                            right:50 ,
                            top:100,
                          ),
                          child: Center(
                            child: Text("Start enjoying a more organized life",textAlign: TextAlign.center,
                             style: TextStyle(
                              color: Colors.orange[800],
                              fontSize: 30),),
                            )
                            ),
                            Container(
                               padding:const EdgeInsets.only(
                            left:60 ,
                            right:60 ,
                            top:300,
                          ),
                          child: Center(
                            child: Text("Plan, organize, track, in one visual, collaborative space",textAlign: TextAlign.center,
                             style: TextStyle(
                              color: Colors.orange[500],
                              fontSize: 15),),
                            )
                            ),
                            Container(
                              padding:const EdgeInsets.only(
                                top: 520,
                              ),
                              child: ElevatedButton(onPressed:() {
                                Navigator.pushNamed(context, 'profile'); 
                              },
                              style:ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color?>(Colors.orange[500]) ,
                                padding:MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
                                  ),
                                  ), 
                              child: const Text('GET STARTED'),
                                  ),
                            )
                      ],
          
                ),

              ),
        ),
    );
  }
}