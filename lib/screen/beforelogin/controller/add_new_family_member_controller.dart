import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/screen/home/view/homepage.dart';
import 'package:vande_mission/screen/beforelogin/modal/add_family_member_modal.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../remote_services/remote_services.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/text_label.dart';

class AddNewFamilyMemberController extends GetxController {
  late StreamSubscription<bool> subcription;

  final dobController = TextEditingController().obs;
  final otpController = TextEditingController().obs;
  final firstNameController = TextEditingController().obs;
  final lastNameController = TextEditingController().obs;
  final fatherNameController = TextEditingController().obs;
  final motherNameController = TextEditingController().obs;
  final aadhaarCardNumberController = TextEditingController().obs;
  final phoneNumberController = TextEditingController().obs;

  var addFamilyMemberModal = AddFamilyMemberModal().obs;

  var showAppBar = false.obs;
  var hideKeyboard = false.obs;
  var showGenderMale = false.obs;
  var showGenderFeMale = false.obs;
  var focusNode = FocusNode();

  var genderName = "".obs;

  @override
  void onInit() {
    super.onInit();
    focusNode.addListener(() {
      showAppBar.value = focusNode.hasFocus;
    });
    subcription = KeyboardVisibilityController().onChange.listen((isVisible) {
      if (kDebugMode) {
        print(isVisible ? "show" : "hide");
      }
      hideKeyboard.value = isVisible ? false : true;
      if (kDebugMode) {
        print("presss" + hideKeyboard.value.toString());
      }
    });
  }

  void onTapFrontCancel() {
    aadharCardFront.value = "";
  }

  void onTapBackCancel() {
    aadharCardBack.value = "";
  }

  var aadharCardFront = "".obs;
  var aadharCardBack = "".obs;
  final ImagePicker _picker = ImagePicker();

  Future getImageFront(ImageSource source, BuildContext context) async {
    final pickedFileFront = await _picker.pickImage(source: source);
    if (pickedFileFront != null) {
      aadharCardFront.value = pickedFileFront.path;
    }
  }

  Future getImageBack(ImageSource source, BuildContext context) async {
    final pickedFileBack = await _picker.pickImage(source: source);
    if (pickedFileBack != null) {
      aadharCardBack.value = pickedFileBack.path;
    }
  }

  void onTapAdd() {
    print("Add");
    addFamilyAPICall(
        firstNameController.value.text,
        lastNameController.value.text,
        fatherNameController.value.text,
        motherNameController.value.text,
        genderName.value,
        changeDateFormat,
        aadhaarCardNumberController.value.text,
        "+91",
        phoneNumberController.value.text,
        otpController.value.text,
        aadharCardFront.value,
        aadharCardBack.value);
  }

  void onTapGenderMale() {
    showGenderFeMale(false);
    genderName.value = "male";
    print(("male:--" + genderName.toString()));
    showGenderMale(true);
  }

  void onTapGenderFeMale() {
    showGenderMale(false);
    genderName.value = "female";
    print("Female:-- " + genderName.toString());
    showGenderFeMale(true);
  }

  late String dateFormat;
  late String changeDateFormat;
  late String formatted;

  Future<void> selectDOB(BuildContext context) async {
    if (GetPlatform.isIOS) {
      selectDate(context);
    } else {
      final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100));
      if (pickedDate != null && pickedDate != DateTime.now()) {
        final DateFormat formatter = DateFormat('dd/MM/yyyy');
        formatted = formatter.format(pickedDate);
        dobController.value.text = formatted;
        changeDateFormat = DateFormat("yyyy-MM-dd").format(pickedDate);
        print("DateFormate:- " + changeDateFormat.toString());
        //validateButton();
      }
    }
  }

  void selectDate(BuildContext context) async {
    DateTime? pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (context) {
        DateTime? tempPickedDate;
        return SizedBox(
          height: 250,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CupertinoButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  CupertinoButton(
                    child: const Text('Done'),
                    onPressed: () {
                      Navigator.of(context).pop(tempPickedDate);
                    },
                  ),
                ],
              ),
              const Divider(
                height: 0,
                thickness: 1,
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime dateTime) {
                    tempPickedDate = dateTime;
                    // validateButton();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    if (pickedDate != null) {
      final DateFormat formatter = DateFormat('dd/MM/yyyy');
      formatted = formatter.format(pickedDate);
      dobController.value.text = formatted;
      changeDateFormat = DateFormat("yyyy-MM-dd").format(pickedDate);
      print("DateFormate22:- " + changeDateFormat.toString());
    }
  }

  void onTapSkip() {
    print("skip");
  }

  Future<Object?> bottomPickImage(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: white,
        elevation: 10,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          close,
                          color: grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      CustomButton(
                        gradientLeft: blueLight,
                        gradientRight: blueLight2,
                        title: "Choose From Photos",
                        color: blue,
                        onTap: () {
                          Get.back();
                          getImageFront(ImageSource.gallery, context);
                        },
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      CustomButton(
                        gradientLeft: blueLight,
                        gradientRight: blueLight2,
                        title: "Take a Photo",
                        color: blue,
                        onTap: () {
                          Get.back();
                          getImageBack(ImageSource.camera, context);
                        },
                      ),
                      // CWRBButton(
                      //   text: 'take_photo',
                      //   isGrey: false,
                      //   onTap: () {
                      //     Get.back();
                      //     getImage(ImageSource.camera, context);
                      //   },
                      //   isLoading: false,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<Object?> phoneBottomSheet(BuildContext context) {
    // fetchCasteAPICall();
    return showCupertinoModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Obx(
          () => GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Container(
                height: showAppBar.value || hideKeyboard.value
                    ? Constants.height(context) * 0.50
                    : Constants.height(context) * 0.70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(),
                ),
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLabel(
                            title: "Verify mobile number",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: black,
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      controller: phoneNumberController.value,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 15, vertical: 20),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          filled: true,
                                          hintStyle:
                                              const TextStyle(color: grey),
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
                            height: 20,
                          ),
                          TextField(
                            controller: otpController.value,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                filled: true,
                                hintStyle: const TextStyle(color: grey),
                                hintText: "enter_otp".tr,
                                fillColor: lightWhite),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomButton(
                                  gradientLeft: blueLight,
                                  gradientRight: blueLight2,
                                  title: "Skip",
                                  color: blue,
                                  onTap: () => onTapSkip(),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: CustomButton(
                                  gradientLeft: orangeLight2,
                                  gradientRight: orangeLight1,
                                  title: "Add",
                                  color: blue,
                                  onTap: () => onTapAdd(),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: const TextLabel(
                                title: 'Resend Otp',
                                color: blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void addFamilyAPICall(
      String firstName,
      String lastName,
      String fatherName,
      String motherName,
      String genderName,
      String dob,
      String aadhaarCardNumber,
      String countryCode,
      String phoneNumber,
      String otpNumber,
      String imagePathFront,
      String imagePathBack) async {
    RemoteService remoteService = RemoteService();
    try {
      var res = await remoteService.addFamilyMemberAPI(
          firstName,
          lastName,
          fatherName,
          motherName,
          genderName,
          dob,
          aadhaarCardNumber,
          countryCode,
          phoneNumber,
          otpNumber,
          imagePathFront,
          imagePathBack);
      if (res != null) {
        print("not call");
        addFamilyMemberModal.value = res;
        if (addFamilyMemberModal.value.id != null) {
          print("family id " + addFamilyMemberModal.value.id.toString());
          print("Data Successfully Inserted");
          Get.back();
          Get.to(() => const HomePage());
        } else {
          print("data not inseted");
        }
      } else {
        // Constants.snackBar("login", 'something_went_wrong', true);
      }
    } finally {
      //  isLoading.value = false;
    }
  }

  void dialogOpen(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (
        ctx,
      ) =>
          AlertDialog(
        title: const TextLabel(
          title: 'new_society',
          color: black,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(
                title: "country",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    print("hello");
                  },
                  child: const TextLabel(
                    title: 'add_society',
                    color: orange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomButton(
                gradientLeft: blueLight,
                gradientRight: blueLight2,
                title: "save",
                color: blue,
                // onTap: () => controller.onTapSave(),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
