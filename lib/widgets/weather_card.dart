import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vande_mission/widgets/text_label.dart';

import '../helper/app_color.dart';
import '../helper/image_constant.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: darkGrey.withOpacity(0.1))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextLabel(
                  title: '19°',
                  fontSize: 44,
                  color: darkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 66,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [linearRed, linearOrange]),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: darkGrey.withOpacity(0.1))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 180),
                  child: Text(
                    "H:24°  L:18° Mid Rain Ahmedabad, India",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(top: 20, right: 40, child: Image.asset(rain))
    ]);
  }
}
