import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class AddChapertScreen extends StatelessWidget {
  const AddChapertScreen({Key? key}) : super(key: key);

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
                        title: 'Add Chapter',
                        color: missonColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      const Padding(
                  padding: EdgeInsets.only(top:10),
                  child: TextLabel(
                    title: "Chapter Title",
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
                hintText: "Rugved",
                hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
               )
              ),
            ),
              ),
                 ),
                 const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Upload your Chapter PDF (Optional)",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: lightWhite,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextLabel(
                      title: "Tap to upload",
                      color: vandeColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    Icon(Icons.file_upload_outlined)
                  ],
                ),
              ),
              ),
            ),
               const Padding(
                  padding: EdgeInsets.only(top:10),
                  child: TextLabel(
                    title: "Description (Editor)",
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
                maxLines: 5,
               decoration:InputDecoration(
                border: InputBorder.none,
                hintText: "Write here",
                hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
               )
              ),
            ),
              ),
                 ),
                 Padding(
               padding: const EdgeInsets.only(top:40),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Add",
                  color: blue,
                  onTap: () {
                    
                  },
                ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}