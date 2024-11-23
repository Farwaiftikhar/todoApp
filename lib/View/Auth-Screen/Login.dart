import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/App-Container.dart';
import 'package:first_project/Controller/assets/Components/TxtFrmFldCnt.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:first_project/View/Auth-Screen/Registration.dart';
import 'package:first_project/View/HomeScreen/Dashboard.dart';
import 'package:first_project/View/HomeScreen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  //final String title;

  Future<void> Login() async {
    isLoading = true;
    //setState(() {});
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim())
        .then((value) {
          isLoading = false;
          setState(() {

          });
      Get.snackbar(
        'Good', 'Created  Successful',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.greenAccent, // Background color
        colorText: Colors.green.withOpacity(0.5), // Text color
        duration: Duration(seconds: 5),
        borderRadius: 10,
        margin: EdgeInsets.all(10),
      );
      // Successfull Snackbar
      //print ('Account Created Sucessfully');
      //isLoading = false;
      //setState(() {});
      Navigator.push(
          context, CupertinoPageRoute(builder: (contex) => Dashboard()));
    }).onError((error, handleError) {
      isLoading = false;
      setState(() {

      });
      //print("------------------------1");
      Get.snackbar(
        'Error', 'Email not Registered',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.orangeAccent, // Background color
        colorText: Colors.white.withOpacity(0.5), // Text color
        duration: Duration(seconds: 3),
        borderRadius: 10,
        margin: EdgeInsets.all(10),
        icon: Icon(Icons.error,
        color: Colors.orangeAccent,
        ));

     // isLoading = false;
      //setState(() {});
      //print('Error : $error');
    });
  }

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
                )),
          ),
          Container(
            height: 180,
            width: 100,
            decoration: BoxDecoration(
                color: (AppColors.circleColor).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(90),
                )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 90, top: 200),
                  height: 230,
                  width: 400,
                  child: AppContainer(
                      text: 'Welcome Back!',
                      weight: FontWeight.bold,
                      size: 22,
                      textColor: AppColors.blackColor),
                ),

                Container(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  height: 280,
                  width: 320,
                  child: Image(image: AssetImage(AppImages.Pic2)),
                ),

                // Password and Email Code

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppContainer(
                          text: 'Email',
                          weight: FontWeight.bold,
                          size: 15,
                          textColor: AppColors.blackColor),
                      FormContainer(
                        hintColor: AppColors.hinttext,
                        text: 'mary.elliot@mail.com',
                        controller: _emailController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppContainer(
                          text: 'Password',
                          weight: FontWeight.bold,
                          size: 15,
                          textColor: AppColors.blackColor),
                      FormContainer(
                        hintColor: AppColors.hinttext,
                        text: '**************',
                        controller: _passwordController,
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 200, top: 5),
                  height: 40,
                  width: 340,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 14, color: (AppColors.backgroundColor)),
                  ),
                ),

                isLoading
                    ? CircularProgressIndicator()
                    : AppButton(
                        text: 'Login',
                        fontWeight: FontWeight.bold,
                        size: 18,
                        onTap: () {
                          Login();
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=> Dashboard()));
                        }),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppContainer(
                        text: 'Don\'t have an account ?',
                        weight: FontWeight.w600,
                        size: 15,
                        textColor: AppColors.blackColor),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Registration()));
                        },
                        child: AppContainer(
                            text: ' Sign Up',
                            weight: FontWeight.w600,
                            size: 15,
                            textColor: AppColors.backgroundColor))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
