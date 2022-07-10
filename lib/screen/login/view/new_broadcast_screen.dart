import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class NewBroadCastScreen extends StatelessWidget {
  const NewBroadCastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const TextLabel(
                    title: 'New Broadcast',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                     const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Broadcast Title",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:20),
          child: TextField(
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "Hello",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),     
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Broadcast Message",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:20),
          child: TextField(
            maxLines: 10,
           decoration:InputDecoration(
            border: InputBorder.none,
            hintText: "Write here",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Broadcast For Location wise Member",
                color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
        decoration: BoxDecoration(
          color: dropdownColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left:10),
          child: TextField(
           decoration:InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.filter_alt),
            hintText: "Search",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ), 
             Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Broacast",
                  color: blue,
                  onTap: () {
                    
                  },
                ),
             ),
             const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}