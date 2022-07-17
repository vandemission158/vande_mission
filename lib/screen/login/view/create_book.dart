import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/create_book_controller.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class CreateBookScreen extends StatelessWidget {
 CreateBookScreen({Key? key}) : super(key: key);

  final CreateBookController createBookController = Get.put(CreateBookController());

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
                    title: 'Create a new Book',
                    color: missonColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                     const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Title",
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
            hintText: "Book Title",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
                const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Publisher Type",
                color: darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: blue),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: TextLabel(
                        title: "Author",
                        color: blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dropdownColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: TextLabel(
                        title: "Member",
                        color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Author",
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
            hintText: "Book Title",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
               const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Price Type",
                color: darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: blue),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: TextLabel(
                        title: "Free",
                        color: blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: dropdownColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: TextLabel(
                        title: "Paid",
                        color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
              const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Book Price (₹)",
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
            hintText: "200",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
             const Padding(
              padding: EdgeInsets.only(top:10),
              child: TextLabel(
                title: "Website Url",
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
            hintText: "https://www.figma.com",
            hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
           )
          ),
        ),
          ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Book Language",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                height: 50,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightWhite
                ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:10,right: 10),
                   child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none, 
                    ),
                      // Initial Value
                      value: createBookController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: createBookController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          createBookController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Book Category",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                height: 50,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightWhite
                ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:10,right: 10),
                   child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none, 
                    ),
                      // Initial Value
                      value: createBookController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: createBookController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          createBookController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Book Edition",
                          color: lightGrey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                        ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: Container(
                height: 50,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightWhite
                ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:10,right: 10),
                   child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none, 
                    ),
                      // Initial Value
                      value: createBookController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: createBookController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          createBookController.dropdownvalue = newValue!;
                      },
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
             Padding(
               padding: const EdgeInsets.only(top:20),
               child: CustomButton(
                  gradientLeft: blueLight,
                  gradientRight: blueLight2,
                  title: "Create",
                  color: blue,
                  onTap: () {
                    createBookController.addChepterMove();
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