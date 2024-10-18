import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class DartdetailsViewModel extends BaseViewModel {
  final List<String> carouselItems = [
    "Welcome to Your Flutter Learning Journey! Discover a platform to master Flutter development with notes, videos, and tutorials.",
    "Flutter is a UI toolkit by Google for building natively compiled applications across mobile, web, and desktop from a single codebase.",
    "Dart is a modern programming language by Google, designed for high-performance apps. Its clean syntax and strong typing make it easy to learn and use."
  ];

  final List<Color> progressColors = [
    Colors.blue, 
    Colors.blue,  
    Colors.blue,      
     
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  String get currentItem => carouselItems[_currentIndex];

  Color getProgressColor(int index) {
    return progressColors[index];
  }

logIn() {
    navigationService.pushNamedAndRemoveUntil(Routes.bottomnavView);
  }
}


