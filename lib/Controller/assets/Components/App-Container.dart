
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:flutter/material.dart';


class AppContainer extends StatelessWidget {

  String text;
  FontWeight weight;
  double size;
  Color textColor;


   AppContainer({super.key,
     required this.text,
     required this.weight,
     required this.size,
     required this.textColor,


  });

  @override
  Widget build(BuildContext context) {
    return  Text( text, style: TextStyle(color:textColor,fontWeight:weight,fontSize:size ),);

  }
  }


