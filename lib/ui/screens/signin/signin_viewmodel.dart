import 'dart:async';





import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';






class SigninViewModel extends BaseViewModel {
  loginIn(){
    navigationService.navigateTo(Routes.loginView);
  }
 
  }

