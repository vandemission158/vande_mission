import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/login/view/add_family_member.dart';
import 'package:vande_mission/screen/login/view/register_family.dart';
import 'package:vande_mission/screen/login/controller/login_screen_controller.dart';
import 'package:vande_mission/screen/login/view/login_type.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/text_label.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginScreenController controller = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      color: white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(vandeMissionImg),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: TextLabel(
                  title: 'login',
                  color: darkGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: lightWhite,
                ),
                child: Row(
                  children: [
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "+91",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: grey),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Center(child: Image.asset(down))
                        ],
                      ),
                    )),
                    Container(
                      height: 52,
                      width: 1,
                      color: verticalDividerColor,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              focusedBorder: const UnderlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              filled: true,
                              hintStyle: const TextStyle(color: grey),
                              hintText: "enter_mobile_number".tr,
                              fillColor: lightWhite),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        "request_otp".tr,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: grey),
                    hintText: "enter_otp".tr,
                    fillColor: lightWhite),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomButton(
                gradientLeft: orangeLight2,
                gradientRight: orangeLight1,
                title: "login",
                color: orange,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextLabel(
                  title: "are_new_user",
                  color: lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                gradientLeft: blueLight,
                gradientRight: blueLight2,
                title: "register_now",
                color: blue,
                onTap: () => controller.onTapRegister(),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "change_language".tr,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400, color: blue),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(downBlack)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
