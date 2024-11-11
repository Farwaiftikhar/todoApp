import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:first_project/View/HomeScreen/HomeScreen.dart';
import 'package:first_project/View/HomeScreen/InsertData/InsertData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DrawerScreen/DrawerScreen.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> _checkboxItems = [
    'Learn programming by 12am',
    'Learn how to cook by 1pm',
    'Pick up the kids by 2pm',
    'Have lunch at 3pm',
    'Go visit mum by 4pm',
  ];

  List<bool> _checkboxValue = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),

      body: Stack(
        children: [
        Container(height: 300, width: 450, color: (AppColors.circleColor)),

        Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
              color: (AppColors.whiteColor).withOpacity(0.3),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(90),
                bottomLeft: Radius.circular(80),
              )),
        ),
        Container(
          height: 150,
          width: 110,
          decoration: BoxDecoration(
              color: (AppColors.whiteColor).withOpacity(0.3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(90),
              )),
        ),

        Container(
          padding: EdgeInsets.only(left: 150, top: 110),
          height: 250,
          width: 250,
          child: CircleAvatar(
            backgroundImage:AssetImage(AppImages.Profile)),
               ),



        Container(
          padding: EdgeInsets.only(top: 250, left: 130),
          height: 400,
          width: 400,
          child: Text(
            'Welcome Mary!',
            style: TextStyle(
                color: (AppColors.whiteColor),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),

        Container(
          padding: EdgeInsets.only(left: 10, top: 210),
          height: 600,
          width: 400,
          child: Image(image: AssetImage(AppImages.Pic3)),
        ),

        Container(
          padding: EdgeInsets.only(right: 50, top: 490, left: 20),
          height: 650,
          width: 400,
          child: Text(
            'Tasks List',
            style: TextStyle(
                color: (AppColors.blackColor),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),

        //Daily_Task Container Start
        Padding(
          padding: EdgeInsets.only(top: 530, left: 15, right: 15, bottom: 20),
            child: Container(
               alignment: Alignment.bottomCenter,
              padding:EdgeInsets.only(left: 20,top: 600) ,
              height: 360,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: (AppColors.whiteColor),),),),



         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: ()
                {Navigator.push(context, CupertinoDialogRoute(builder: (context)=> HomeScreen(),
                    context: context));},
                child: Container(
                  padding: EdgeInsets.only(top: 540,left: 30),
                  height: 620,
                  width: 150,
                  child:
                  Text('Daily Tasks',style: TextStyle(color: (AppColors.blackColor),fontSize: 17,fontWeight: FontWeight.bold),),),
              ),


              InkWell(
                onTap: (){
                  Navigator.push(context, CupertinoDialogRoute(builder: (context)=> InsertData(),
                      context: context));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 480,right: 30),
                  child:
                  Icon(Icons.add_circle_outline,color: (AppColors.backgroundColor),),),
              ),
            ],),





        Padding(
            padding: EdgeInsets.only(top:570,left: 30),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                for(int i = 0; i < _checkboxItems.length; i++)
                  CheckboxListTile
                    (value: _checkboxValue[i],
                    onChanged: (value)
                    {
                      _checkboxValue[i] = value!;
                      setState(() {
                      });
                    },
                    title: Text(_checkboxItems[i] ),
                    activeColor: (AppColors.circleColor),
                    controlAffinity:ListTileControlAffinity.leading,
                    //tristate: true,
                  ),


              ],
            ),
          ),




   ], ),);



  }
}
