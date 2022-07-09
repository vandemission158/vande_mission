import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/widgets/text_label.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextLabel(
              title: 'Enter your Business Information',
              color: missonColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          const Padding(
            padding: EdgeInsets.only(top:10),
            child: TextLabel(
              title: "Type",
              color: missonColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextLabel(
                      title: "Business",
                      color: blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: dropdownColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: TextLabel(
                      title: "Company",
                      color: grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: const TextLabel(
                        title: "Business Name",
                        color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                      ),
          ),
          ],
        ),
      ),
    );
  }
}