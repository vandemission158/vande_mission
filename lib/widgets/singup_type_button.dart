import 'package:flutter/material.dart';
import 'package:vande_mission/widgets/text_label.dart';

class SignUpTypeButton extends StatelessWidget {
  final String? title;
  final Function? onTap;
  final Color? color,textColor;
  final FontWeight? fontWeight;
  final double? height,width,fontSize;



  const SignUpTypeButton({Key? key, this.title, this.onTap, this.color, this.height, this.width, this.textColor, this.fontWeight, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: ()=>onTap!(),
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color),
          height: height,
          width: width,
          child:  Center(
            child: TextLabel(
              title: title,
              fontSize: fontSize,
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
        ),
      );
  }
}
