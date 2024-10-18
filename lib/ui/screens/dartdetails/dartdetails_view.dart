import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../constants/assets.gen.dart';
import 'dartdetails_viewmodel.dart';

class DartdetailsView extends StatelessWidget {
  const DartdetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DartdetailsViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Progress Indicator
                Container(
                  height: 5,
                  child: LinearProgressIndicator(
                    value: (model.currentIndex + 1) / model.carouselItems.length,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      model.getProgressColor(model.currentIndex),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CarouselSlider.builder(
                  itemCount: model.carouselItems.length,
                  itemBuilder: (context, index, realIndex) {
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 135, 222, 235), // Change to your desired color
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          model.carouselItems[index],
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      model.setCurrentIndex(index);
                    },
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.mainBlue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    ),
                    onPressed: () {
                      model.logIn();
                    },
                    child: Text("NEXT", style: TextStyle(color: Palette.white, fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => DartdetailsViewModel(),
    );
  }
}

