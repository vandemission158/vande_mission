import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/app_color.dart';

class ExpandableTextWidget extends StatelessWidget {
  final double? fontSize;
  final int? maxlines;
  final String? title;
  final FontWeight? fontWeight;
  final Color? color;
  const ExpandableTextWidget(
      {Key? key,
      this.fontSize,
      this.title,
      this.fontWeight,
      this.color,
      this.maxlines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableText(
      title!,
      expandText: 'More',
      collapseText: 'Less',
      maxLines: maxlines!,
      animation: true,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color!,
      ),
      linkColor: orange,
      linkStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700),
    );
  }
}
