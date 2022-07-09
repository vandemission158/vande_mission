import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/controller/componet_screen_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class ComponetsScreen extends StatelessWidget {
  ComponetsScreen({Key? key}) : super(key: key);

  final ComponetsScreenController componetsScreenController =
      Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:15),
            child: Icon(Icons.close,color: black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               TextLabel(
                title: "What_do_you_want_to_talk_about?",
                color: lableColor.withOpacity(0.4),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              const SizedBox(
                height: 5,
              ),
              const TextLabel(
                title:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                color: black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextLabel(
                title: 'vote_which_is_better?',
                color: black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              for (var i = 0; i < componetsScreenController.texts.length; i++)
                Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Row(
                      children: [
                        LinkifyText(
                          componetsScreenController.text,
                          // componetsScreenController.texts[i]['text'],
                          textAlign: TextAlign.left,
                          linkTypes: componetsScreenController.texts[i]['types'],
                         // textStyle: const TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w500),
                          linkStyle: const TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w500),
                          // onTap: (link) =>
                          //     showSnackbar("link pressed: ${link.value!}"),
                        ),
                      ],
                    )),
              const Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: TextLabel(
                  title: 'vote_which_image_is_better?',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
               height: 150,
                child: GridView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 4,crossAxisSpacing: 10),
                    itemBuilder: (BuildContext context, index) {
                      return Stack(
                        children: [
                              Image.asset(
                              componetsScreenController.pollImages[index],fit: BoxFit.cover,),
                              Positioned(
                                top: 15,right: 10,
                                child: Container(
                                decoration: const BoxDecoration(
                                  color: white,
                                  shape: BoxShape.circle),
                                child: const Icon(Icons.close,size: 15,),
                              ))
                            ],
                      );
                    }),
              ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: bluePanchayat)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12,right: 12,top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextLabel(
                          title: 'poll_option',
                        ),
                        Icon(Icons.close,size: 15,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15,bottom: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color:bluePanchayat.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                          child: const Padding(
                            padding: EdgeInsets.only(left:20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Answer 1"
                              ),
                            ),
                          ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color:bluePanchayat.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                        child: const Padding(
                          padding: EdgeInsets.only(left:20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Answer 2"
                            ),
                          ),
                        ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top:15,bottom: 15),
                      child: InkWell(
                        onTap: (){},
                        child: const TextLabel(
                          title: "add_option",
                          color: orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: TextLabel(
                title: 'what_do_you_want_to_talk_about?',
                 color: lableColor.withOpacity(0.4),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
             const Padding(
               padding: EdgeInsets.only(top:10,bottom: 20),
               child: TextLabel(
                title: "My business is hocco eatery, come and experience the good food in a good price. 10% off on first order",
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
               ),
             ),
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: bluePanchayat)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:12,right: 12,top: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          height: 40,width: 100,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: <Color>[
                              linearPurple,
                              linearpink
                            ]),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Center(
                            child: TextLabel(
                              title: 'business',
                              color: white,
                              fontSize: 11,
                              fontWeight: FontWeight.w500 ,
                            ),
                          ),
                        ),
                        const Icon(Icons.close,size: 15,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10,bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(businessImage),
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const TextLabel(
                                  title: "Hocco Eatery",
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextLabel(
                                  title: "Dine-in · Takeaway",
                                  color: black.withOpacity(0.5),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  width: 200,
                                  child: TextLabel(
                                    title: "Shivalik 7 building near rambag brts, Maninagar, Ahmedabad, Gujarat 380008",
                                    color: black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
               padding: const EdgeInsets.only(top:10),
               child: TextLabel(
                title: 'what_do_you_want_to_talk_about?',
                 color: lableColor.withOpacity(0.4),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
              const Padding(
               padding: EdgeInsets.only(top:10),
               child: TextLabel(
                title: "Can’t wait to explore the ahmedabad! Lorem Ipsum is simply dummy text of the",
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
               ),
             ),
           Padding(
             padding: const EdgeInsets.only(top:20,bottom: 20),
             child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: bluePanchayat)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:12,right: 12,top: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Container(
                            height: 40,width: 100,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: <Color>[
                                linearPurple,
                                linearpink
                              ]),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: TextLabel(
                                title: 'location',
                                color: white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500 ,
                              ),
                            ),
                          ),
                          const Icon(Icons.close,size: 15,)
                        ],
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top:10,bottom: 10),
                       child: Image.asset(mapImage),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:10,bottom: 10),
                       child: Row(
                        children: [
                          Image.asset(cityImage),
                          Padding(
                            padding: const EdgeInsets.only(left:12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextLabel(
                                  title: 'city',
                                  color: black.withOpacity(0.5),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                                const TextLabel(
                                  title: "Ahmedabad, Gujarat",
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          )
                        ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
           ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: TextLabel(
                title: 'what_do_you_want_to_talk_about?',
                 color: lableColor.withOpacity(0.4),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
               const Padding(
               padding: EdgeInsets.only(top:10),
               child: TextLabel(
                title: 'Checkout this video',
                 color: black,
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
             Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Image.asset(videoImage),
                ),
                Positioned(
                  top: 20,
                  bottom: 20,
                  left: 20,right: 20,
                  child: Image.asset(playIcon))                
                ]),
          Padding(
               padding: const EdgeInsets.only(top:15),
               child: TextLabel(
                title: 'what_do_you_want_to_talk_about?',
                 color: lableColor.withOpacity(0.4),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
             const Padding(
               padding: EdgeInsets.only(top:10),
               child: TextLabel(
                title: 'My home interior ideas and concepts',
                 color: black,
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
            ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:10),
               child: SizedBox(
                height: 150,
                 child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                   return Stack(
                            children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:10),
                                    child: Image.asset(
                                    componetsScreenController.pollImages[index],fit: BoxFit.cover,),
                                  ),
                                  Positioned(
                                    top: 15,right: 20,
                                    child: Container(
                                    decoration: const BoxDecoration(
                                      color: white,
                                      shape: BoxShape.circle),
                                    child: const Icon(Icons.close,size: 15,),
                                  ))
                                ],
                          );
                 }),),
               ),
             ),
           SizedBox(height:MediaQuery.of(context).size.height/2.5,)
            ],
          ),
        ),
      ),
      bottomSheet: Container(
          height: MediaQuery.of(context).size.height/2.85,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: componetsScreenController
                                            .bottomColor[index],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: Image.asset(
                                            componetsScreenController
                                                .icons[index])),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextLabel(
                                      title: componetsScreenController
                                          .textBottom[index],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: vandeColor)),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(micIcon),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25),
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
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: blue),
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
          )),
    );
  }
}
