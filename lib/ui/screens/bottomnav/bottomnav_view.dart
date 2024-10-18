import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'bottomnav_viewmodel.dart';

class BottomnavView extends StatelessWidget {
  const BottomnavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomnavViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          body:   model.getSelectedScreen(),
         
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Palette.white,
            currentIndex: model.selectedIndex,
            selectedItemColor: Palette.mainBlue,
            unselectedItemColor: Palette.darkGrey,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 10,
            selectedFontSize: 10,
            onTap: model.setSelectedIndex, items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
               BottomNavigationBarItem(icon: Icon(Icons.pending_actions_outlined),label: "My Notes"),
                BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: "Ask Darty"),
                 BottomNavigationBarItem(icon: Icon(Icons.trending_up_outlined),label: "Progress"),
            ],
        ),);
      },
      viewModelBuilder: () => BottomnavViewModel(),
    );
  }
}
