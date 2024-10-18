

import 'package:flutter_main_project/app/app.router.dart';
import 'package:flutter_main_project/app/utils.dart';

import 'package:stacked/stacked.dart';


class LoginViewModel extends BaseViewModel {
   logIn(){
    navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }
  signUp(){
    navigationService.navigateTo(Routes.signinView);
  }

 
}
