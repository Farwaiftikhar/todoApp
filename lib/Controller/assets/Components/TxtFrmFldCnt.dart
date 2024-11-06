

import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  Color hintColor;
  Color fielColor;
  String text;
 TextEditingController controller;

   FormContainer({super.key,

     required this.hintColor,
     required this.fielColor,
     required this.text,
     required this.controller,
   });

  @override
  Widget build(BuildContext context) {
    return
      Container(
    padding: EdgeInsets.only(left: 10),
    margin: EdgeInsets.only(top: 5,bottom: 5),
    height:40 ,
    width:340,
    decoration: BoxDecoration(
    color:fielColor,
    borderRadius: BorderRadius.circular(15)
    ),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
    hintText:text,
    border: InputBorder.none,
    ),
    style: TextStyle(color:hintColor),
    ),
    );
  }
}
