import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'progress_viewmodel.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProgressViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(height: 100,"https://www.shutterstock.com/image-vector/loader-loading-icon-vector-rotating-600nw-1775642411.jpg"),
                Text("Looks like you haven't enrolled and started",style: TextStyle(fontSize: 16,color: Palette.mainBlue)),
                 Text("learning yet",style: TextStyle(fontSize: 16,color: Palette.mainBlue),)
            
              ],
            ),
            
          ),
        ),);
      },
      viewModelBuilder: () => ProgressViewModel(),
    );
  }
}
