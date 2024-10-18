import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:flutter_main_project/ui/screens/home/widgets/categ_container.dart';
import 'package:flutter_main_project/ui/screens/home/widgets/dart_containers.dart';
import 'package:flutter_main_project/ui/screens/home/widgets/detailed_ctgry.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Palette.lightGrey,
          drawer: SafeArea(
            child: drawerHome(model),
          ),
         appBar: AppBar(
          
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Builder(
              builder: (context) {
                return IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                
                  }, icon: Icon(Icons.menu_rounded,color: Palette.black,size: 30,));
              }
            ),
          ),
          
          title: Text("Home",style: TextStyle(color: Palette.black,fontSize: 20,fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
           

            CircleAvatar(
              backgroundColor: Palette.grey,
              radius: 20,
              child: IconButton(onPressed: (){
                model.pickImage();
              }, icon: Icon(Icons.person)),
            ),
            SizedBox(width: 17,),
          ],
         ),
         body: Padding(
           padding: const EdgeInsets.all(14.0),
           child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded,color: Palette.black,),
                hintText: "Search",
                hintStyle: TextStyle(color: Palette.black),
                border: OutlineInputBorder
                (
                  borderRadius: BorderRadius.circular(100),
                  
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              ),
             ),
             SizedBox(height: 10),
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                 child: SizedBox(
                  width: 440,
                  height: 200,
                   child: CarouselSlider(
                      options: CarouselOptions(
                   padEnds: true,
                     
                             height: 180, 
                             
                             autoPlay: true,
                             enlargeCenterPage: true,
                             aspectRatio:36 /9,
                             viewportFraction: 0.8,
                           ) ,
                    
                    items: [
                    Image.network(fit: BoxFit.cover,"https://boffincoders.com/wp-content/uploads/2024/08/Flutter-3.24-is-Here-Whats-New-in-the-Latest-Update-2048x1152.png.webp"),
                    Image.network(fit: BoxFit.cover,"https://storage.googleapis.com/gweb-developer-goog-blog-assets/images_archive/original_images/AVvXsEhKnMpHHkukLTOmgb1piySSgo9He9REnqmDOie_fZPvJmDN_v-mJy8M63tOC2reusd4fBDruY"),
                    Image.network(fit: BoxFit.cover,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0SaUgLX0Y3SFeKL2DkcNOsYA58P_ZSpV3KA&s"),
                    Image.network(fit: BoxFit.cover,"https://logixbuilt.com/wp-content/uploads/2023/10/flutter-for-cross-platform-app-development.jpg"),
                    Image.network(fit: BoxFit.cover,"https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/162763277/original/e7fdc404234ec375f6a301e346c5f0634e8c1ab2/do-the-flutter-development.png"),
                    Image.network("https://sigmato.com/wp-content/uploads/2023/01/1_-6WdIcd88w3pfphHOYln3Q.png",
                    fit: BoxFit.cover,),
                   ]
                   
                                 
                           ),
                 ),
               ),
             ),
             SizedBox(height: 15,),
             
             
             Text("CATEGORIES",style: TextStyle(color: Palette.black,fontSize: 20,fontWeight: FontWeight.w500),),
             SizedBox(height: 10,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  CategContainer(text: 'All',),
                  SizedBox(width: 18,),
                  CategContainer(text: 'Practical',),
                     SizedBox(width: 18,),
                  CategContainer(text: 'Syntax',),
                     SizedBox(width: 18,),
                  CategContainer(text: 'Theory',),
                     SizedBox(width: 18,),
                  CategContainer(text: 'Questions',),
                     SizedBox(width: 18,),
                  CategContainer(text: 'Quiz',),
                  
                ],
               ),
             ),
             SizedBox(height: 18,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                
                children:[
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB7Vks64TFCUeQvKKgiGtWvdlM6sIp2Bko4w8rh8UKfW6rhux6NlUne6DPUItc_PHwK7I&usqp=CAU', title: 'Practical', subText: '100+ Practical',),
                  SizedBox(width: 12,),
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLX6HS2GnXtmsqT2m1oENQAVKXTzeyEpIztKyWsOfMSfJUMFROeQFViMNyc0QVevuMIWI&usqp=CAU', title: 'Syntax', subText: '80+ Syntax',),
                  SizedBox(width: 12,),
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRESiHPjgUZiTQ6ISfIBvomjT75Wnjy1hhbIg&s', title: 'Flutter', subText: '11+ Flutter',),
                  SizedBox(width: 12,),
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfKcusZPxxHD1zJk0bAb_Aeo-xr72dys1hvw&s', title: 'Dart', subText: '45+ Dart',),
                  SizedBox(width: 12,),
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp-tzKfOr7N2jdpQwJSpY-fwI8o_dBFkApPzxxmafb_fyHA2UQsqpRh1Lt01v9km8kq9M&usqp=CAU', title: 'Question', subText: '99+ Questions',),
                  SizedBox(width: 12,),
                  DetailedCtgry(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEmjJHfSHkiKNLNXBC201SI8lxR2YpqYjI0QpmTzMUOUUfTZSPy6-aIK9zSPeTeeb7xP8&usqp=CAU', title: 'Quiz', subText: 'Quiz Test',),
                  
                ]
               ),
             ),
              SizedBox(height: 20,),
                       Text("LECTURES",style: TextStyle(color: Palette.black,fontSize: 20,fontWeight: FontWeight.w500)),
                       DartContainers(),
                       SizedBox(height: 12,),
                        DartContainers(),
                         SizedBox(height: 12,),
                         DartContainers(),
                          SizedBox(height: 12,),
                           DartContainers(),
                          SizedBox(height: 12,),
                           DartContainers(),
                          SizedBox(height: 12,),
                           DartContainers(),
                          SizedBox(height: 12,),
              ],
             ),
           ),
         )
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Drawer drawerHome(HomeViewModel model) {
    return Drawer(
            backgroundColor: Palette.white,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: IconButton(onPressed: (){
                      model.pickImage();
                    }, icon: Icon(Icons.person,size: 50,)),
                  ),
                  GestureDetector(
                    onTap: () {
                      model.signIn();
                    },
                    child: Row(
                      children: [
                        Text("Hello User",style: TextStyle(fontSize: 23),),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,color: Palette.black,))
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Palette.darkGrey,size: 25,)),
                      SizedBox(width: 8,),
                      Text("Settings",style: TextStyle(color: Palette.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                   Divider(),
                    Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Palette.darkGrey,size: 25,)),
                      SizedBox(width: 8,),
                      Text("Rate Us",style: TextStyle(color: Palette.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                   Divider(),
                    Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Palette.darkGrey,size: 25,)),
                      SizedBox(width: 8,),
                      Text("Share",style: TextStyle(color: Palette.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                   Divider(),
                    Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined,color: Palette.darkGrey,size: 25,)),
                      SizedBox(width: 8,),
                      Text("More Courses",style: TextStyle(color: Palette.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  
                  Spacer(),
                 Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      
                  
                    ),
                    color: Palette.lightBlue,
                  ),
                  
                  child: Row(
                    children: [
                      Text("App Mode",style: TextStyle(color: Palette.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Switch(value: model.isSwitchOn, onChanged: (value) => model.toggleSwitch(value),)
              
                    ],
                  ),
                 )
              
              
                  
                ],
              ),
            ),
          );
  }


  
}



