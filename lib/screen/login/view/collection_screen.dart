// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/controller/collection_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class CollectionScreen extends StatelessWidget {

   CollectionScreen({Key? key}) : super(key: key);

  final CollectionController collectionController = Get.put(CollectionController());
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const TextLabel(
                title: "Collection",
                color:Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
        bottom:  const TabBar(
          indicatorColor: orange,
                tabs: [
                  Tab(
                    child: TextLabel(
                      title: "Text",
                      color: black,
                    ),
                  ),
                   Tab(
                    child: TextLabel(
                      title: "Wallapaper",
                      color: black,
                    ),
                  ),
                   Tab(
                    child: TextLabel(
                      title: "Video",
                      color: black,
                    ),  
                  ),
                ]
                ),
        ),
        body: TabBarView(
         // controller: _tabController,
          children: [
           ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (contetx,index){
            return Padding(
              padding: const EdgeInsets.only(left:12,right: 12,top: 10),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.black,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left:20,right: 20,top: 10),
                  child: Column(
                    children: [
                       const TextLabel(
                        title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Lorem Ipsum is simply dummy text of the printing",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top:10,bottom: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(collectionImage),
                            Padding(
                              padding: const EdgeInsets.only(right:40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextLabel(
                                    title: "Farita Smith",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  TextLabel(
                                    title: "05 March 2022 5:00AM",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          Row(
                            children: const [
                               Icon(Icons.note)
                            ],
                          )                              
                          ],
                         ),
                       )     
                    ],
                  ),
                ),
              ),
            );
           }),
          GridView.builder(
            shrinkWrap: true,
            itemCount: collectionController.wallapaperImage.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), itemBuilder: (context,index){
           return 
           Container(
            height:70,width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(collectionController.wallapaperImage[index]),    
            ),
           )
           );
          //  Padding(
          //   padding: const EdgeInsets.only(top:10),
          //   child: Image.asset(collectionController.wallapaperImage[index],height: 50,fit: BoxFit.cover,),
          // );
        }),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context,indx){
             return Padding(
               padding: const EdgeInsets.all(10),
               child: Stack(
                children: [
                  Image.asset(videoImage),
                  Positioned(
                    left: 40,right: 40,
                    bottom: 10,top: 10,
                    child: Image.asset(playIcon))
                  ]
                ),
             );   
          })
        ]),
      ),
    );
  }
}