import 'package:flutter/material.dart';

import '../helper/app_color.dart';
import 'text_label.dart';

class TapToUploadButton extends StatelessWidget {
  const TapToUploadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TextLabel(
              title: "Tap to upload",
              color: vandeColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            Icon(Icons.file_upload_outlined)
          ],
        ),
      ),
    );
  }
}
