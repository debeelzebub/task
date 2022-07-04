import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/paint.jpg'), 
          fit: BoxFit.cover)
      ),
       child:Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
               child: Text('\nREGISTER',
               style: TextStyle(
                color: Colors.green[900],
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
                            fillColor: Colors.grey,filled: true,
                            hintText: "NAME",
                        ),
                        ),
                        const SizedBox(
                          height:10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.grey,filled: true,
                            hintText: "USERNAME",
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
                        fillColor: Colors.grey,filled: true,
                        hintText: "PASSWORD",
                    ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                      Text("Sign Up", 
                      style:TextStyle(
                        color: Colors.orange[900],
                        fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(radius: 20,
                      backgroundColor: Colors.orange[900],
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
                        Navigator.pushNamed(context, 'login');
                      }, child:Text("Sign In",
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange[900],
                        fontSize: 12),)),
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