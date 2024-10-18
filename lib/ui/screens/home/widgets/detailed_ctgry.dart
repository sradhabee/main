

import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';

class DetailedCtgry extends StatelessWidget {
   DetailedCtgry({
    super.key,required this.title,required this.subText,required this.imageUrl
  });
  String title;
  String subText;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(4),
    
      
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Palette.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(21)),
            
            child: Image.network(fit: BoxFit.cover,imageUrl,height: 100,)),
          Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
           Text(subText,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
           Row(
             children: [
               Text("Let's Start",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
               IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded))
             ],
           )
        ],
      ),
    );
  }
}
