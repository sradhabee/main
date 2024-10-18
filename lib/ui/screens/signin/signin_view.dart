import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:lottie/lottie.dart';


import '../../../constants/assets.gen.dart';

import 'signin_viewmodel.dart';

class SigninView extends StatelessWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SigninViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor:Palette.mainBlue ,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign-In and Never Lose",style: TextStyle(color: Palette.white,fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Your Progress",style: TextStyle(color: Palette.white,fontSize: 24,fontWeight: FontWeight.bold)),
            Lottie.asset(
              repeat: true,
              Assets.animations.animation1728235149187),
              SizedBox(height: 40,),
              Text("One Tap Sign In",style: TextStyle(color: Palette.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 30,
                
                backgroundImage:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcQdXNDIc8HaqzWB3uhavx-2adhcdg4-aW7Ly28lSvQ9KhqYHwm5jzNUzjLovdCa0q7eA&usqp=CAU")),
                SizedBox(height: 15,),
                Text("Sign Up with Email",style: TextStyle(color: Palette.white,fontSize: 14,fontWeight: FontWeight.w400),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Palette.white,fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () =>model.loginIn(),
                      
                      child: Text("Log In",style: TextStyle(color: Palette.white,fontSize: 14,fontWeight: FontWeight.w800),))
                  ],
                )


              ],
            ),
          )
          // Color.fromARGB(255, 106, 8, 245) 
          
         
        );
      },
      viewModelBuilder: () => SigninViewModel(),
    );
  }
}
