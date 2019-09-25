import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  
  @override
  Path getClip(Size size) {
    
    Path p = Path();

     p.lineTo(0, size.height);
    p.lineTo(size.height, size.width / 2); 
    //p.lineTo(size.width / 2 , size.height / 2 );

 /*    p.lineTo(size.width, 0);
    p.lineTo(0, size.height);
    p.lineTo(size.width / 2 , size.height / 2 ); */

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

  
}