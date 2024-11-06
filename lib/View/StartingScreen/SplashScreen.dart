
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/App-Container.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:first_project/View/Auth-Screen/Registration.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
            children: [

              Container(
                height: 100,
                width: 180,
                decoration: BoxDecoration(
                    color: (AppColors.circleColor).withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80),
                      bottomLeft: Radius.circular(90),
                    )
                ),),
              Container(
                height: 180,
                width: 110,
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
                          padding: EdgeInsets.only(left: 40,top: 150),
                          height:400,
                          width:350,
                          child: Image(image: AssetImage(AppImages.Pic1)),
                        ),
                
                    Container(
                      height: 70,
                      width: 400,
                      padding: EdgeInsets.only(left: 40,top: 20),
                      child:
                        AppContainer(text:'Get things done with TODO', weight:FontWeight.bold, size: 25, textColor: AppColors.blackColor)
                      ),
                
                    Container(
                      height: 180,
                      width: 280,
                      padding: EdgeInsets.only(top: 10),
                      child:AppContainer(
                          text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                              ' Sed posuere gravida purus id eu condimentum est diam quam. '
                              '  Condimentum blandit diam.',
                              weight: FontWeight.bold, size: 18, textColor: (AppColors.blackColor)),),
                
                    InkWell(
                      onTap: ()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Registration()));},
                        child: AppButton(
                         height: 50,
                         width: 350,
                         text: 'Get Started',
                         fontWeight: FontWeight.bold,
                         size: 18),),
                
                
                
                
                
                  ],
                ),
              ),
    ],),
      );
  }
}
