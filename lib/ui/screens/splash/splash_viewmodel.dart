import 'dart:async';





import 'package:flutter_main_project/ui/screens/dartdetails/dartdetails_view.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';






class SplashViewModel extends BaseViewModel {
  Timer? _timer;
  // final _apiService = locator<ApiService>();
  // final _notificationService = locator<NotificationService>();

  void startTimer() async {
  Future.delayed(Duration(seconds: 3),(){
    navigationService.navigateTo(Routes.dartdetailsView);
  });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
