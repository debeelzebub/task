// ignore_for_file: dead_code, avoid_unnecessary_containers, unnecessary_this, avoid_print, unused_element

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   SharedPreferences? sharepref;
  String name='';
   List<String> list=[];

   final _tcontroller=TextEditingController();
 
   
      @override
  void initState(){
    super.initState();
  
    
    init();
  }
  @override
  void dispose(){

    super.dispose();
  }
    bool _isSelected=false;
  
  @override
  Widget build(BuildContext context) {
      
        list.add(name);
  int listlen =list.length;
  print(listlen);
  print(list);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        leading: const Icon(Icons.article_outlined),
        title:const Text("INBOX"),
        actions: const [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
         child: Icon(Icons.search),),
       ],
        ),
      body: SafeArea(
        child:Column(
        children: [
            const SizedBox(height: 50),
            Container(
              child: const CircleAvatar(radius:50,
              child:Image(image: AssetImage("assets/cc.jpg"))
              ),
            ),
            const SizedBox(
              height: 10
            ),
            Container( 
              child: Text('Hey, Dude',
              style: TextStyle(color: Colors.red[400], 
             fontSize: 25),
             ),
            ), 
            const Divider(thickness: 5,) ,
            Container(
              child: Column(
                children: [for(int i=1;i<listlen;i++)
               CheckboxListTile(
                title: Text(list[i]),
                  value: _isSelected, onChanged:(bool? value){ 
                    setState(() {
                      _isSelected = value!;
                    });

                   },
                   controlAffinity: ListTileControlAffinity.leading,
                  ),
              ],),
            )
       
        ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
        await openDialog();
        setState(() {
        }
        
        );
     
        },
        backgroundColor: Colors.orange[500],
        child: const Icon(Icons.add)),

    );    
  }
  Future<String?> openDialog()=> showDialog<String>(
  context: this.context, 
  builder: (context) =>  AlertDialog(
    title: const Text('Enter Task',
    textAlign:TextAlign.center,
    style: TextStyle(fontSize: 25),),
    content: TextField(
      autofocus: true,
      controller: _tcontroller,
      decoration: const InputDecoration(
        border:OutlineInputBorder(),
        hintText:"enter the task",
        fillColor: Colors.white,filled: true,
  ),
  ),
  actions: [
     ElevatedButton(onPressed:(){
      savedata();
      init();
        Navigator.pop(context);
      }, child: const Text('Submit'),  ),
  ],
  )
  );

  savedata() async{
  print(_tcontroller.text);
  // ignore: unused_local_variable
  final sharepref = await SharedPreferences.getInstance();
  this.sharepref?.setString('save_val', _tcontroller.text.toString());
  }
  
 Future init() async {
  sharepref = await SharedPreferences.getInstance();
  final name=sharepref?.getString('save_val') as String;
  setState(() {
   this.name=name;
  });
  
 }

 

}

