import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/app_color.dart';
import '../helper/constant.dart';

class BottomSheetList extends StatelessWidget {
  final bool? show, hide;
  final String? hintText;
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final Function? onChangedText;
  final PageController? pageController;
  final Widget? child;
  const BottomSheetList(
      {Key? key,
      this.hintText,
      this.textController,
      this.focusNode,
      this.onChangedText,
      this.pageController,
      this.child,
      this.show,
      this.hide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
            height: !show! || hide!
                ? Constants.height(context) * 0.50
                : Constants.height(context) * 0.70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(),
            ),
            child: Scaffold(
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: textController,
                    onChanged: (text) => onChangedText!(),
                    focusNode: focusNode,
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
                        hintText: hintText!.tr,
                        fillColor: lightWhite),
                  ),
                  Expanded(child: child!),
                ],
              ),
            )),
      ),
    );
    // Scaffold(
    //   body: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       TextField(
    //         controller: textController,
    //         onChanged: (text) => onChangedText!(),
    //         focusNode: focusNode,
    //         decoration: InputDecoration(
    //             contentPadding:
    //                 const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    //             focusedBorder: const UnderlineInputBorder(
    //               borderSide: BorderSide(color: Colors.transparent),
    //             ),
    //             enabledBorder: const UnderlineInputBorder(
    //               borderRadius: BorderRadius.all(Radius.circular(15)),
    //               borderSide: BorderSide(color: Colors.transparent),
    //             ),
    //             border: const OutlineInputBorder(
    //               borderRadius: BorderRadius.all(Radius.circular(15)),
    //             ),
    //             filled: true,
    //             hintStyle: const TextStyle(color: grey),
    //             hintText: hintText!.tr,
    //             fillColor: lightWhite),
    //       ),
    //       Expanded(child: child!),
    //     ],
    //   ),
    // );
  }
}
