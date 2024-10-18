
import 'package:flutter_main_project/ui/screens/bottomnav/bottomnav_view.dart';
import 'package:flutter_main_project/ui/screens/dartdetails/dartdetails_view.dart';
import 'package:flutter_main_project/ui/screens/darty/darty_view.dart';
import 'package:flutter_main_project/ui/screens/home/home_view.dart';
import 'package:flutter_main_project/ui/screens/login/login_view.dart';
import 'package:flutter_main_project/ui/screens/notepad/notepad_view.dart';
import 'package:flutter_main_project/ui/screens/progress/progress_view.dart';
import 'package:flutter_main_project/ui/screens/signin/signin_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';

import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: BottomnavView),
    MaterialRoute(page: NotepadView),
    MaterialRoute(page: DartyView),
    MaterialRoute(page: ProgressView),
    MaterialRoute(page: DartdetailsView),
   
    
    
    
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
