import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/login/controller/login_type_controller.dart';
import 'package:vande_mission/widgets/main_widget.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../../../widgets/custom_button.dart';

class LoginType extends StatelessWidget {
  LoginType({Key? key}) : super(key: key);

  final LoginTypeController controller = Get.put(LoginTypeController());
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      color: white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Text(
              "how_signup".tr,
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.typleList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: lightWhite),
                    height: 125,
                    width: Constants.width(context),
                    child: Center(
                      child: TextLabel(
                        title: controller.typleList[index].toString(),
                        fontSize: 22,
                        color: darkGrey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              title: "Next",
              color: orange,
            ),
          ],
        ),
      ),
    );
  }
}
