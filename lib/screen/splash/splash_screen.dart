import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/initial_loader.dart';
import 'splash_controller.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return const InitialLoader();
  }
}
