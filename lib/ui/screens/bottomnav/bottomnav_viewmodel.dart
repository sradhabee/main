import 'dart:async';





import 'package:flutter/material.dart';
import 'package:flutter_main_project/ui/screens/darty/darty_view.dart';
import 'package:flutter_main_project/ui/screens/home/home_view.dart';
import 'package:flutter_main_project/ui/screens/login/login_view.dart';
import 'package:flutter_main_project/ui/screens/notepad/notepad_view.dart';
import 'package:flutter_main_project/ui/screens/progress/progress_view.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';






class BottomnavViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setSelectedIndex(int index){
    _selectedIndex = index;
     notifyListeners();
  }
  List<Widget> myScreens = [
    HomeView(),
    NotepadView(),
    DartyView(),
    ProgressView(),

    

  ];
  getSelectedScreen(){
   return myScreens[selectedIndex];
  }
 
  
}
