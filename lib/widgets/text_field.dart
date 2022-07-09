import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vande_mission/helper/app_color.dart';

class TextField extends StatelessWidget {
  final String? title;
  final Color? color;
  final TextStyle? style;
  final InputDecoration? decoration;
  const TextField({Key? key,this.color,this.style,this.title,this.decoration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dropdownColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
       decoration:InputDecoration(
        hintText: title,
        hintStyle: style,
       )
      ),
    );
  }
}