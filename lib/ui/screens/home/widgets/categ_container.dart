import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';

class CategContainer extends StatelessWidget {
   CategContainer({
    super.key,required this.text
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Palette.black)
      ),
      child: Center(child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Palette.black),)),
    );
  }
}
