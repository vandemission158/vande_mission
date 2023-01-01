import 'package:flutter/material.dart';

import '../../../helper/app_color.dart';
import '../../../helper/image_constant.dart';
import '../../../widgets/text_label.dart';

class CollectionVideoScreen extends StatefulWidget {
  const CollectionVideoScreen({Key? key}) : super(key: key);

  @override
  State<CollectionVideoScreen> createState() => _CollectionVideoScreenState();
}

class _CollectionVideoScreenState extends State<CollectionVideoScreen> {
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
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(collectionDetailsImages),
                Image.asset(playIcon)
              ],
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
                const SizedBox(width: 20,),
                Image.asset(
                  downloadIcon,
                  height: 40,
                  width: 40,
                ),
                                const SizedBox(width: 20,),

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
