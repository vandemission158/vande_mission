import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/login/controller/new_group_controller.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class NewGroupScreen extends StatelessWidget {
 NewGroupScreen({Key? key}) : super(key: key);

 final NewGroupController newGroupController = Get.put(NewGroupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left:16,right: 16),
              child: TextLabel(
                            title: 'Create a  new group',
                            color: missonColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                color: greenlight,
                child: Padding(
                  padding: const EdgeInsets.only(left:16,right: 16,bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Padding(
                      padding: EdgeInsets.only(top:10),
                      child: TextLabel(
                        title: "Group Name",
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
                    hintText: "Family group",
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
                      title: "About of group",
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
                  maxLines: 3,
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
                        title: "Group Captain",
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
                    suffixIcon: Icon(Icons.filter_alt),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                   )
                  ),
                ),
                  ),
                     ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 16,left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     const Padding(
                  padding: EdgeInsets.only(top:10),
                  child: TextLabel(
                    title: "Choose group type",
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
                            title: "Address",
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
                            title: "Category",
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
                padding: EdgeInsets.only(top: 14),
                child: TextLabel(
                            title: "Country",
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
                        value: newGroupController.dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down), 
                        borderRadius: BorderRadius.circular(20),  
                        // Array list of items
                        items: newGroupController.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                            newGroupController.dropdownvalue = newValue!;
                        },
                      ),
                   ),
                 ),
               ),
                const Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextLabel(
                            title: "State",
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
                        value: newGroupController.dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down), 
                        borderRadius: BorderRadius.circular(20),  
                        // Array list of items
                        items: newGroupController.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                            newGroupController.dropdownvalue = newValue!;
                        },
                      ),
                   ),
                 ),
               ),
                const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "District",
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
                      value: newGroupController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: newGroupController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          newGroupController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
              const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Village/City/Town",
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
                      value: newGroupController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: newGroupController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          newGroupController.dropdownvalue = newValue!;
                      },
                    ),
                 ),
               ),
             ),
              const Padding(
                      padding: EdgeInsets.only(top:10),
                      child: TextLabel(
                        title: "Society Name",
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
                    hintText: "Vande Mataram",
                    hintStyle: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w400),
                   )
                  ),
                ),
                  ),
                     ),
                      const Padding(
              padding: EdgeInsets.only(top: 14),
              child: TextLabel(
                          title: "Group Public or Private",
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
                      value: newGroupController.dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down), 
                      borderRadius: BorderRadius.circular(20),  
                      // Array list of items
                      items: newGroupController.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                          newGroupController.dropdownvalue = newValue!;
                      },
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
                    newGroupController.joinMember();
                  },
                ),
             ),
                ],
              ),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}