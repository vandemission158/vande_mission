import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vande_mission/screen/beforelogin/controller/address_list_controller.dart';

import '../../../helper/app_color.dart';
import '../../../helper/constant.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/text_label.dart';

class AddressList extends StatefulWidget {
  AddressList({Key? key}) : super(key: key);

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  final AddressListController controller = Get.put(AddressListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: black,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                child: const TextLabel(
                  title: 'Address List',
                  fontSize: 26,
                  color: darkGrey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.addressListModal.value.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: Constants.width(context),
                      decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextLabel(
                              title: controller
                                  .addressListModal.value.data![index].addressType
                                  .toString(),
                              fontSize: 15,
                              color: darkGrey,
                              fontWeight: FontWeight.w400,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.asset(location), 
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: TextLabel(
                                    title: controller.addressListModal.value
                                        .data![index].houseNumber
                                        .toString(),
                                    fontSize: 15,
                                    color: darkGrey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
