import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
             const TextLabel(
                    title: 'Choose family member relation',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: lightWhite,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search skills",
                          hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: black) 
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top:10),
                    child: TextLabel(
                      title: "Added",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                    Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Save & Next",
                  color: blue,
                  onTap: () {},
                ),
             ),
          ]
        ),
      ),
    );
  }
}