import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/controller/componet_screen_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class ComponetsScreen extends StatelessWidget {
   ComponetsScreen({Key? key}) : super(key: key);

  final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:40,left: 14,right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const TextLabel(
                title: "What_do_you_want_to_talk_about?",
                color: lableColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
            ),
            const SizedBox(height: 5,),
            const TextLabel(
              title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              color: black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              ),
           const SizedBox(height: 15,),
            const TextLabel(title: 'vote_which_is_better?',
            color: black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            ),
               for (var i = 0; i < componetsScreenController.texts.length; i++)
              Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: LinkifyText(
                    componetsScreenController.text,
                    // componetsScreenController.texts[i]['text'],
                    textAlign: TextAlign.left,
                    linkTypes: componetsScreenController.texts[i]['types'],
                    // textStyle: textStyle,
                    // linkStyle: textStyle.copyWith(
                    //   color: Colors.blue,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // onTap: (link) =>
                    //     showSnackbar("link pressed: ${link.value!}"),
                  )),  
          ],
        ),
      ),
      bottomSheet: Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
        
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10
          )
        ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top:30),
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Column(
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                color: componetsScreenController.bottomColor[index],
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Image.asset(componetsScreenController.icons[index])),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10),
                              child: TextLabel(
                                title: componetsScreenController.textBottom[index],
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ) 
                          ],
                        ),
                      )
                    ],
                  );
                }
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: vandeColor)
                    ),
                    child:  Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Image.asset(micIcon),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left:25),
                            child: TextLabel(
                              title: 'record',
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Container(
                  height:  50, width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: blue                
                  ),
                  child: const Center(
                    child: TextLabel(
                      title: "post",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      ),
                  ),
                )
                ],
              ),
            )
          ],
        )
        ),
    );
  }
}
