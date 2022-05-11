import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/view/add_family_member.dart';
import 'package:vande_mission/screen/login/view/register_family.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/text_label.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MainWidget(
        child: Column(
          children: [
            Image.asset(vandeMissionImg),
            const TextLabel(
              title: 'login',
              color: darkGrey,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70),
            ),
            const CustomButton(
              title: "login",
              color: orange,
            ),
            SizedBox(
              height: 10,
            ),
            const TextLabel(
                title: "are_new_user",
                color: lightGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              onTap: () => Get.to(() => AddFamilyMember()),
              title: "register_now",
              color: blue,
            )
          ],
        ),
        color: white);
  }
}
