import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../widgets/main_widget.dart';
import '../../../widgets/singup_type_button.dart';
import '../controller/signup_type_controller.dart';

class SignUpType extends StatelessWidget {
  SignUpType({Key? key}) : super(key: key);

  final SignUpTypeController controller = Get.put(SignUpTypeController());
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      color: white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Text(
              "how_signup".tr,
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                SignUpTypeButton(
                  height: 125,
                  width: Constants.width(context),
                  color: lightWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  textColor: darkGrey,
                  title: "new_family",
                  onTap: controller.onTapNewFamily,
                ),
                const SizedBox(
                  height: 20,
                ),
                SignUpTypeButton(
                  height: 125,
                  width: Constants.width(context),
                  color: lightWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  textColor: darkGrey,
                  title: "already_registered_family",
                ),
                const SizedBox(
                  height: 20,
                ),
                SignUpTypeButton(
                  height: 125,
                  width: Constants.width(context),
                  color: lightWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  textColor: darkGrey,
                  title: "society_registration",
                  onTap: controller.onTapSocietyRegistration,
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
