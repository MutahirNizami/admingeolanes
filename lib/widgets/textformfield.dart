import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(4),
          hintText: "Search here",
          hintStyle: GoogleFonts.poppins(
            color: Mycolor().searchcolor,
            fontSize: height * 0.02,
          ),
          fillColor: Mycolor().fieldcolor,
          filled: true,
          suffixIcon: Icon(
            Icons.search,
            color: Mycolor().searchiconcolor,
            size: height * 0.032,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.01),
            borderSide: BorderSide(
              color: Mycolor().fieldbordercolor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(height * 0.01),
              borderSide: BorderSide(
                color: Mycolor().fieldbordercolor,
              ))),
    );
  }
}