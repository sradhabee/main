import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'darty_viewmodel.dart';

class DartyView extends StatelessWidget {
  const DartyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DartyViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Ask DARTY!!",style: TextStyle(color: Palette.black,fontSize: 24,fontWeight: FontWeight.bold),),
          ),
        );
      },
      viewModelBuilder: () => DartyViewModel(),
    );
  }
}
