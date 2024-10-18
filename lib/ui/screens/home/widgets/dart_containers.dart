import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';

class DartContainers extends StatelessWidget {
  const DartContainers({
    super.key, 
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)
            ),
            child: Image.network(fit: BoxFit.cover,"https://cdn3d.iconscout.com/3d/free/thumb/free-dart-3d-icon-download-in-png-blend-fbx-gltf-file-formats--android-logo-google-flutter-coding-lang-pack-logos-icons-7578014.png?f=webp"),
          ),
          SizedBox(width: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text("Dart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Text("Let's Start Lecture",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))
            ],
          )
        ],
      ),
    );
  }
}
