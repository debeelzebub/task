// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';

//  main(){
//  runApp(MyApp()); 
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'new',
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
   MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _tcontroller=TextEditingController();

  String _show='display here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200] ,   
      body:SafeArea(
            
        child:  Column(
          children: [  
            Container(
               child:Center(
              child:Padding(padding:const EdgeInsets.only(
          top: 10,
          left: 300,
          right: 300,
          ),
                child: Column( children: [
                  TextField(
                    controller: _tcontroller,
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(),
                    hintText: 'Type anything',
                    fillColor:Colors.white,filled: true)
                  )
                ],
                ),
               ), 
            ),
            ),
            
            
               Container( 
                child: Padding(
                  padding:const EdgeInsets.only(
                    bottom:30,
                    top:10,
                  ),      
                child:Column(
                  children:[
                    ElevatedButton(onPressed: () {
                      // ignore: avoid_print
                      print(_tcontroller.text);
                      setState(() {
                        _show=_tcontroller.text;
                      });
                      
                    },
                     child: const Text('Click here'),
                     ),
                     const Text('\n'),
                   Text(_show),
                  ],
                ),
                ),
                ),
            
          ],
        ),
      ),
    );    
  }
}
