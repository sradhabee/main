import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:flutter_main_project/constants/assets.gen.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';


import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Palette.white,
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text("Hi! We are Glad to See You Back",style: TextStyle(color: Palette.black,fontSize: 22,fontWeight: FontWeight.w500),),
                  Lottie.asset(height: 300,Assets.animations.handshake),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Please Enter your Account details",style: TextStyle(color: Palette.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  SizedBox(height: 60,),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Palette.white,
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Palette.black),
                     
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                   TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Palette.white,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Palette.black),
              
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.centerRight,
                  child: Text("Forgot Password",style: TextStyle(color: Palette.black,
                  decoration: TextDecoration.underline,decorationColor: Palette.black),),),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      GestureDetector(
                        onTap: () => model.signUp(),
                        child: Text("Sign Up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Palette.mainBlue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                        
                      ),
                      onPressed: (){
                        model.logIn();
                      }, child:Text("LET'S START LEARNING",style: TextStyle(color: Palette.white,fontSize: 18),) ),
                  )
              
                ],
              ),
            ),
            
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
