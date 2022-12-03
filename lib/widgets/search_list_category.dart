import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../helper/app_color.dart';

class SearchListCategory extends StatelessWidget {
  final String? title;
  const SearchListCategory({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: yellowSociety.withOpacity(0.1),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextLabel(
              title: title!,
              fontSize: 16,
              color: yellowSociety,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
