import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/screen/login/controller/componet_screen_controller.dart';
import 'package:vande_mission/widgets/text_label.dart';

class ComponetsScreen extends StatelessWidget {
   ComponetsScreen({Key? key}) : super(key: key);

  final ComponetsScreenController componetsScreenController = Get.put(ComponetsScreenController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
          children: const [

            TextLabel(
                title: "What_do_you_want_to_talk_about?",
            color: ,
            ),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            Text('vote_which_is_better?'),
            Text("")
          ],
        ),
      ),
    );
  }
}
