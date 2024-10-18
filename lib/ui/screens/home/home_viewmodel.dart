import 'dart:io';

import 'package:flutter_main_project/app/app.router.dart';
import 'package:flutter_main_project/app/utils.dart';

import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  File?imageFile;
  bool isSwitchOn = false;

   Future <void> pickImage()async{
final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
if(pickedFile!=null){
 
    imageFile = File(pickedFile.path);
    

  
}
  }
  void toggleSwitch(bool value){
    isSwitchOn = value;
    notifyListeners();
  }

  signIn(){
    navigationService.navigateTo(Routes.signinView);
  }
  

}
