import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/App-Container.dart';
import 'package:first_project/Controller/assets/Components/TxtFrmFldCnt.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:first_project/View/HomeScreen/Dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
                color:(AppColors.circleColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(80),
                )
            ),),
          Container(
            height: 180,
            width: 100,
            decoration: BoxDecoration(
                color:(AppColors.circleColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(90),
                )
            ),),



          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 90,top: 180),
                  height: 230,
                  width: 400,
                  child: AppContainer(text:'Welcome Back!', weight: FontWeight.bold, size: 22, textColor: AppColors.blackColor),
                ),
            
                Container(
                  padding: EdgeInsets.only(left: 30,top: 25),
                  height:280,
                  width:320 ,
                  child: Image(image: AssetImage(AppImages.Pic2)),
                ),
            
                // Password and Email Code
            
                Padding(
                  padding:  EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppContainer(text: 'Email', weight: FontWeight.bold, size: 15, textColor: AppColors.blackColor),
                      FormContainer(hintColor: AppColors.hinttext, fielColor: AppColors.whiteColor, text:'mary.elliot@mail.com'),
            
                      SizedBox(height: 10,),
                      
                      AppContainer(text: 'Password', weight: FontWeight.bold, size: 15, textColor: AppColors.blackColor),
                      FormContainer(hintColor: AppColors.hinttext, fielColor: AppColors.whiteColor, text:'**************'),
                    ], ),),
                
                Container(
                  padding: EdgeInsets.only(left: 200,top: 5),
                  height: 40,
                  width: 340,
                  child: Text('Forgot Password?',style: TextStyle(fontSize: 14,color:(AppColors.backgroundColor)),),
            
                ),
            
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Dashboard()));
            
                  },
                    child: AppButton(
                      height: 50,
                      width: 350,
                      text: 'Login',
                      fontWeight: FontWeight.bold,
                      size: 18)
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppContainer(text: 'Don’t have an account ?', weight: FontWeight.w600, size: 15, textColor: AppColors.blackColor),
                    AppContainer(text:' Sign Up', weight: FontWeight.w600, size: 15, textColor:AppColors.backgroundColor)
            
                  ],),],
            ),
          ),
        ], ),

    );
  }
}