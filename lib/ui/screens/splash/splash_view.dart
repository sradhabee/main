import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(child: Image.network("https://logowik.com/content/uploads/images/flutter5786.jpg")),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
