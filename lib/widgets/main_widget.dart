import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/app_color.dart';

class MainWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool? avoidKeyboard;

  const MainWidget(
      {Key? key, required this.child, required this.color, this.avoidKeyboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: avoidKeyboard ?? true,
        backgroundColor: color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          foregroundColor: black,
        ),
        body: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
