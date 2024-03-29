import 'package:flutter/material.dart';
import 'package:vande_mission/helper/image_constant.dart';

import '../helper/app_color.dart';

class InitialLoader extends StatelessWidget {
  const InitialLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: blue,
          ),
          Center(child: Image.asset(vandeMissionImg)),
          const Positioned.fill(
            bottom: 30,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: white,
                    strokeWidth: 2,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
