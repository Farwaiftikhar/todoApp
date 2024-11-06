
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/App-Container.dart';
import 'package:first_project/Controller/assets/Components/TxtFrmFldCnt.dart';
import 'package:first_project/View/Auth-Screen/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
     TextEditingController _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
                color: (AppColors.circleColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(80),
                )
            ),),
          Container(
            height: 180,
            width: 100,
            decoration: BoxDecoration(
                color: (AppColors.circleColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(90),
                )
            ),),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 90,top: 183),
                  height: 220,
                  width: 400,
                  child: Text('Welcome Onboard!',style: TextStyle(color:(AppColors.blackColor),fontWeight: FontWeight.bold,fontSize: 25),),
                ),
            
            
                Container(
                  padding: EdgeInsets.only(left: 20,top: 10),
                  height: 100,
                  width: 400,
                  child: Text(' Let help you in completing your tasks',style: TextStyle(color:(AppColors.blackColor) ,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
            
                Padding(  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     AppContainer(text: 'Full Name', weight: FontWeight.bold, size: 15, textColor:AppColors.blackColor),
                     FormContainer(hintColor:AppColors.hinttext, fielColor: AppColors.whiteColor, text:'Mary Elliot', controller: _nameController,),
            
                      SizedBox(height: 10,),
            
                      AppContainer(text: 'Email', weight: FontWeight.bold, size: 15, textColor:AppColors.blackColor),
                      FormContainer(hintColor:AppColors.hinttext, fielColor: AppColors.whiteColor, text:'mary.elliot@mail.com', controller: _emailController,),
            
                      SizedBox(height: 10,),
            
                      AppContainer(text: 'Password', weight: FontWeight.bold, size: 15, textColor:AppColors.blackColor),
                      FormContainer(hintColor:AppColors.hinttext, fielColor: AppColors.whiteColor, text:'**************', controller: _passwordController,),
            
                      SizedBox(height: 10,),
            
                      AppContainer(text: 'Confirm Password', weight: FontWeight.bold, size: 15, textColor:AppColors.blackColor),
                      FormContainer(hintColor:AppColors.hinttext, fielColor: AppColors.whiteColor, text:'**************', controller: _confirmController, ),
            
                      SizedBox(height: 5,),
            
                      InkWell(
                       onTap: ()
                        //async
                           {

                          //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Login()));
                        },
                        child:
                        AppButton
                          (text: 'Register',
                            fontWeight: FontWeight.bold,
                            size: 15),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         AppContainer(text: 'Already have an account ?', weight:FontWeight.normal, size: 15, textColor:AppColors.blackColor),
                         SizedBox(width: 3,),
                         InkWell(
                           onTap: (){
                             Navigator.pushReplacement(context,CupertinoPageRoute(builder: (context)=> Login()));

                           },
                             
                             child: AppContainer(text: 'Sign In', weight: FontWeight.normal, size: 15, textColor: AppColors.backgroundColor))
              
            
                        ],),
                    ],),
                )],
            ),
          ),
        ],

      ),
    );
  }
}




