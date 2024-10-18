import 'package:flutter/material.dart';
import 'package:flutter_main_project/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'notepad_viewmodel.dart';

class NotepadView extends StatelessWidget {
  const NotepadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotepadViewModel>.reactive(
     
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("My Notes",style: TextStyle(color: Palette.black,fontSize: 24,fontWeight: FontWeight.bold),),
          ),
         body: Padding(
           padding: const EdgeInsets.all(12.0),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Center(child: Image.network(height: 200,"https://img.freepik.com/free-vector/hand-drawn-no-data-illustration_23-2150696458.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1727654400&semt=ais_hybrid")),
               Text("No Notes Yet",style: TextStyle(color: Palette.mainBlue,fontSize: 18),),
               Spacer(),
               TextFormField(
                decoration: InputDecoration(
                  hintText: "Add Notes",
                  
                  border: OutlineInputBorder(
                  
                    borderRadius: BorderRadius.circular(20),
                    
                  )
                ),
               )
             ],
           ),
         ),
        );
      },
      viewModelBuilder: () => NotepadViewModel(),
    );
  }
}
