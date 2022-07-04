// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cloud.jpg'), 
          fit: BoxFit.cover)
      ),
       child:Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
               child: Text('\nWELCOME',
               style: TextStyle(
                color: Colors.pink[900],
                fontSize: 30),),
              ),
              Container(
                child:  Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top:100,
                      left: 490,
                      right:490,
                    ),
                    child:Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.white,filled: true,
                            hintText: "username",
                        ),
                        ),
                        const SizedBox(
                          height:10,
                        ),
                       TextField(
                        obscureText: true,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        fillColor: Colors.white,filled: true,
                        hintText: "password",
                    ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                      Text("Sign In", 
                      style:TextStyle(
                        color: Colors.pink[900],
                        fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(radius: 20,
                      backgroundColor: Colors.pink[900],
                      child: IconButton(onPressed:() {}, 
                      icon: const Icon(Icons.arrow_forward)),)
                     ],
                     ),
                    const SizedBox(
                      height: 10,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      TextButton(onPressed:() {
                        Navigator.pushNamed(context, 'register');
                      }, child:Text("Sign Up",
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.pink[900],
                        fontSize: 12),)),
                          TextButton(onPressed:() {
                        
                      }, child:Text("Forget Password",
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.pink[900],
                        fontSize: 12),))
                     ],)
                      ],
                    ),
                     
                  ),
                ),
              ),
            ],
          )),
        
       ),
    );
  }
}