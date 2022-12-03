import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/helper/image_constant.dart';
import 'package:vande_mission/screen/afterlogin/controller/payment_controller.dart';
import 'package:vande_mission/widgets/custom_button.dart';
import 'package:vande_mission/widgets/text_label.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.arrow_back,
              color: black,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 25, top: 10),
                child: Text(
                  "Add New",
                  style: TextStyle(
                      color: orange, fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Payment Details",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w700, color: black),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child:
                    TabBar(labelColor: orange, indicatorColor: orange, tabs: [
                  Tab(
                    text: "Bank Details",
                  ),
                  Tab(
                    text: "Wallet",
                  )
                ]),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: orange.withOpacity(0.3),
                                width: 2.0,
                              ),
                            ),
                          ),
                        )),
                    TabBarView(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  // height: 80,
                                  decoration: BoxDecoration(
                                      color: greenlight,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(bankImage),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "HDFC Bank Ltd",
                                                        style: TextStyle(
                                                            color: black,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 20),
                                                      ),
                                                      const Text(
                                                        "JHON DEO | XXXX1829",
                                                        style: TextStyle(
                                                            color: black,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        "Savings | IFSC HDFC0001679",
                                                        style: TextStyle(
                                                            color: black
                                                                .withOpacity(
                                                                    0.5),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(Icons.more_vert)
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Text(
                                                    "UPI 8829@upi",
                                                    style: TextStyle(
                                                        color: black
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 20),
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: blue),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "My Current alance",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "\$2000",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 5),
                            child: Divider(
                              color: black.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 15),
                            child: TextLabel(
                              color: black,
                              title: "Manage funds",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => controller.onTapGenderMale(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                controller.showGenderMale.isTrue
                                                    ? orange
                                                    : orange.withOpacity(0.1)),
                                        color: controller.showGenderMale.isTrue
                                            ? white
                                            : orange.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: TextLabel(
                                        title: "+ Add Funds",
                                        color: controller.showGenderMale.isTrue
                                            ? orange
                                            : white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () => controller.onTapGenderFeMale(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: controller
                                                    .showGenderFeMale.isTrue
                                                ? orange
                                                : orange.withOpacity(0.1)),
                                        color:
                                            controller.showGenderFeMale.isTrue
                                                ? white
                                                : orange.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: TextLabel(
                                        title: "Withdrawal",
                                        color:
                                            controller.showGenderFeMale.isTrue
                                                ? orange
                                                : white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          controller.showGenderMale.value == true
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextLabel(
                                        title: "Add Amount",
                                        color: grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: dropdownColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Padding(
                                          padding: EdgeInsets.only(left: 18),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "₹ 500",
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: CustomButton(
                                          gradientLeft: orangeLight2,
                                          gradientRight: orangeLight1,
                                          title: "Add Now",
                                          onTap: () {
                                            controller.addNow = true;
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TextLabel(
                                              title: "Add Amount",
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: dropdownColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 18),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: "₹ 500",
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              ListView.builder(
                                                  itemCount: 2,
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      ((context, index) {
                                                    return withdrawalCardList();
                                                  })),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    text:
                                                        'Want to withdraw in another bank account? ',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: black,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: 'Click here ',
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: orange,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700)),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          controller.showGenderFeMale.isTrue
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: CustomButton(
                                    gradientLeft: orangeLight2,
                                    gradientRight: orangeLight1,
                                    title: "Add Now",
                                    onTap: () {},
                                  ),
                                )
                              : Container()
                        ],
                      )
                    ]),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget withdrawalCardList() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Container(
        // height: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: green),
            color: white,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(bankImage),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextLabel(
                              title: "HDFC Bank Ltd",
                              color: black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                            const TextLabel(
                              title: "JHON DEO | XXXX1829",
                              color: black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            TextLabel(
                              title: "Savings | IFSC HDFC0001679",
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.check,
                                size: 20,
                                color: white,
                              ),
                              TextLabel(
                                title: "Selected",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "UPI 8829@upi",
                          style: TextStyle(
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
