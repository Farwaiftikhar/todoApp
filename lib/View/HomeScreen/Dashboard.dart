
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/RowContainer.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [

          Container(
              height: 300,
              width: 450,
              color:(AppColors.circleColor)
          ),


          Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
                color:(AppColors.whiteColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(80),
                )
            ),),
          Container(
            height: 150,
            width: 110,
            decoration: BoxDecoration(
              color: (AppColors.whiteColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(90),
                )
            ),),


                    Container(
                    padding: EdgeInsets.only(left: 150,top: 110),
                    height: 250,
                    width: 250,
                    child: CircleAvatar(backgroundImage: AssetImage(AppImages.Profile),),
                    ),
          
                    Container(
                      padding: EdgeInsets.only(top: 250,left: 130),
                      height: 400,
                      width: 400,
                      child: Text('Welcome Mary!',style: TextStyle(color:(AppColors.whiteColor),fontSize: 18,fontWeight: FontWeight.bold),),
                    ),

                    Container(
                     padding: EdgeInsets.only(left: 10,top: 260),
                     height: 600,
                     width: 400,
                     child: Image(image: AssetImage(AppImages.Pic3)),
                      ),


                    Container(
                   padding: EdgeInsets.only(right: 50,top: 510,left: 20),
                   height: 650,
                   width: 400,
                   child: Text('Tasks List',style: TextStyle(color:(AppColors.blackColor),fontWeight: FontWeight.bold,fontSize: 24),),
                 ),


                           //Daily_Task Container Start
                           Padding(
                             padding:  EdgeInsets.only(top: 570,left: 15,right: 15,bottom: 20),
                             child: Container(
                              // alignment: Alignment.bottomCenter,
                               //padding:EdgeInsets.only(left: 20,top: 600) ,
                              height: 300,
                               width: 380,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:(AppColors.whiteColor),
                                ),
                               ),),

                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 580,left: 30),
                                    height: 620,
                                    width: 150,
                                    child:
                                    Text('Daily Tasks',style: TextStyle(color: (AppColors.blackColor),fontSize: 17,fontWeight: FontWeight.bold),),),


                                  Container(
                                      padding: EdgeInsets.only(top: 590,right: 30),
                                      child:
                                      Icon(Icons.add_circle_outline,color: (AppColors.backgroundColor),),),
                                ],),

                  Padding(
                     padding:  EdgeInsets.only(top:630,left: 30),
                      child:BlockContainer(text: 'Learn programming by 12am'),),

             Padding(
                padding:  EdgeInsets.only(top:660,left: 30),
                  child:BlockContainer(text: 'Learn how to cook by 1pm'),),

          Padding(
            padding:  EdgeInsets.only(top:690,left: 30),
            child:BlockContainer(text: 'Pick up the kids by 2pm'),),

             Padding(
            padding:  EdgeInsets.only(top:720,left: 30),
            child:BlockContainer(text: 'Pick up the kids by 2pm'),),

              Padding(
            padding:  EdgeInsets.only(top:750,left: 30),
            child:BlockContainer(text: 'Have lunch at 3pm'),),

            Padding(
            padding:  EdgeInsets.only(top:780,left: 30),
            child:BlockContainer(text: 'Go visit mum by 4pm'),),

          Container(
            padding: EdgeInsets.only(top: 580,left: 50),
            margin: EdgeInsets.only(top:650,left: 380 ),
            height: 100,
            width: 3,
            color: AppColors.lineColor,

          )


              ], ),
             );
  }



}


