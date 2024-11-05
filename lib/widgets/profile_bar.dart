import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBar extends StatelessWidget {
//  final String? title;
//  final String? subtitle;
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Image(
          image: const AssetImage("assets/images/GLlogo.png"),
          width: width * 0.3,
        ),
        const Spacer(),
        CircleAvatar(
          radius: height * 0.02,
          child: Image.asset(
            "assets/images/profile.png",
          ),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Text(title!),
            //  Text(subtitle!),

            Text(
              "Global Travelers",
              style: GoogleFonts.poppins(
                  fontSize: height * 0.018,
                  color: Mycolor().titlecolor,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Super Admin",
              style: GoogleFonts.poppins(
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w400,
                  color: Mycolor().subtitlecolor),
            ),
          ],
        ),
        Icon(
          Icons.arrow_drop_down_rounded,
          color: Mycolor().iconcolor,
          size: height * 0.055,
        )
      ],
    );
  }
}
