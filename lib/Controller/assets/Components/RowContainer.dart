
import 'package:flutter/material.dart';

import '../../Contstants/Container-Color/Color.dart';

class BlockContainer extends StatelessWidget {
  String text;
   BlockContainer({super.key,
  required this.text,
   });

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Icon(Icons.check_box_outline_blank,color:(AppColors.blackColor),),
          SizedBox(width: 5,),
          Text(text,
            style: TextStyle(color:AppColors.blackColor,fontSize:15,fontWeight: FontWeight.w700),),
        ],);
  }
}

