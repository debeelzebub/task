// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Responsivelay extends StatelessWidget {
  
     Widget? watchbody;
     Widget? mobilebody;
     Widget? desktopbody;
     Widget? tvbody;
   Responsivelay({Key? key, this.watchbody, this.mobilebody,this.desktopbody,this.tvbody}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        if(constraints.maxWidth<=600){
          return watchbody ?? const SizedBox();
        }
        else if(constraints.maxWidth<=899)
        {
          return mobilebody ?? const SizedBox();
        }
        else if(constraints.maxWidth<=1200)
        {
          return desktopbody ?? const SizedBox();
        }
        else {
          return tvbody ??const SizedBox();
        }
      
    }
    );
    
  }
}