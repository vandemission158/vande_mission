import 'package:flutter/material.dart';
import 'package:vande_mission/helper/constant.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/text_label.dart';

class CollectionTextScreen extends StatefulWidget {
  const CollectionTextScreen({Key? key}) : super(key: key);

  @override
  State<CollectionTextScreen> createState() => _CollectionTextScreenState();
}

class _CollectionTextScreenState extends State<CollectionTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(blogUser),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextLabel(
                  title: "Farita Smith",
                  fontSize: 17,
                  color: black,
                  fontWeight: FontWeight.w700,
                ),
                TextLabel(
                  title: "@SmithFa",
                  fontSize: 15,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 20),
              child: Container(
                height: Constants.height(context) / 1.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border(
                        bottom: BorderSide(color: grey.withOpacity(0.2)),
                        top: BorderSide(color: grey.withOpacity(0.2)),
                        left: BorderSide(color: grey.withOpacity(0.2)),
                        right: BorderSide(color: grey.withOpacity(0.2)))),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextLabel(
                    title:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Lorem Ipsum is simply dummy text of the printing",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: grey.withOpacity(0.1))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(redHeart),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  downloadIcon,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: grey.withOpacity(0.1))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(share),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
