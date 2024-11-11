
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
 // double height;
 // double width;
  String text;
  FontWeight fontWeight;
  double size;
  VoidCallback onTap;
   AppButton({super.key,
  //required this.height,
 // required this.width,
  required this.text,
  required this.fontWeight,
  required this.size,
     required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return   InkWell(
    onTap: onTap,



      child:
      Container(
      padding: EdgeInsets.only(left: 10,),
      margin: EdgeInsets.only(top: 80,bottom: 5),
      alignment: Alignment.center,
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          color: (AppColors.circleColor),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Text(text,style:TextStyle(color:(AppColors.blackColor),fontSize: size,fontWeight:fontWeight),
      ),
      ), );
  }
}
