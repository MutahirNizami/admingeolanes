// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolanesproject/model/cardmodel.dart';
import 'package:geolanesproject/utilies/mycolors.dart';

import 'package:geolanesproject/widgets/custom_button.dart';
import 'package:geolanesproject/widgets/custom_text.dart';

class QuickStatusScreen extends StatefulWidget {
  const QuickStatusScreen({super.key});

  @override
  State<QuickStatusScreen> createState() => _QuickStatusScreenState();
}

class _QuickStatusScreenState extends State<QuickStatusScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Mycolor().backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //1st container................
            CustomButton(
              height: height * 0.41,
              width: width,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: Mycolor().tabbarcolor,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.02, vertical: height * 0.009),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: width * 0.003,
                                color: Mycolor().exportbordercolor),
                            color: Mycolor().exportmidcolor,
                            borderRadius: BorderRadius.circular(height * 0.01)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/icons/download.png",
                              height: height * 0.02,
                              color: Mycolor().exporticoncolor,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            CustomText(
                              fontWeight: FontWeight.w600,
                              text: "Export",
                              fontSize: height * 0.015,
                              textcolor: Mycolor().exporticoncolor,
                            ),
                          ],
                        ),
                        onTap: () {
                          log("Hello bro");
                        },
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      //2nd button.........
                      CustomButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.02, vertical: height * 0.009),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: width * 0.003,
                                color: Mycolor().fieldbordercolor),
                            borderRadius: BorderRadius.circular(height * 0.01)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/icons/clander.png",
                              height: height * 0.02,
                              color: Mycolor().subtitlecolor,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            CustomText(
                              fontWeight: FontWeight.w600,
                              text: "All Time",
                              fontSize: height * 0.018,
                              textcolor: Mycolor().subtitlecolor,
                            ),
                          ],
                        ),
                        onTap: () {
                          log("Hello bro");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Expanded(
                    child: RevenueGrid(width: width, height: height),
                  ),
                ],
              ),
            ),

            //second container.......................................
            CustomText(
              fontWeight: FontWeight.w600,
              text: "Enterprise Users",
              fontSize: height * 0.025,
              textcolor: Mycolor().titlecolor,
            ),
            //space b/w text and container.............

            SizedBox(
              height: height * 0.01,
            ),

            CustomButton(
              height: height * 0.13,
              width: width,
              // margin: const EdgeInsets.symmetric(vertical: 2),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  color: Mycolor().tabbarcolor,
                  borderRadius: BorderRadius.circular(12)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    width: width * 0.42,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.02),
                      color: Mycolor().tabbarcolor,
                      border: Border.all(
                          width: width * 0.002,
                          color: Mycolor().fieldbordercolor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Enterprise Admin",
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w600,
                          textcolor: Mycolor().subtitlecolor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "20",
                              textcolor: Mycolor().titlecolor,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w600,
                            ),
                            // SizedBox(
                            //   width: width * 0.08,
                            // ),
                            CustomButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: height * 0.012,
                                  vertical: height * 0.005),
                              decoration: BoxDecoration(
                                  color: Mycolor().percentbtncolor,
                                  borderRadius:
                                      BorderRadius.circular(height * 0.01)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_upward_rounded,
                                    size: height * 0.022,
                                    color: Mycolor().percentdatacolor,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  CustomText(
                                    fontWeight: FontWeight.w600,
                                    text: "20%",
                                    fontSize: height * 0.017,
                                    textcolor: Mycolor().percentdatacolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    width: width * 0.42,
                    height: height * 0.5,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.02),
                      color: Mycolor().tabbarcolor,
                      border: Border.all(
                          width: width * 0.002,
                          color: Mycolor().fieldbordercolor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Individual Users ",
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w600,
                          textcolor: Mycolor().subtitlecolor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "1k",
                              textcolor: Mycolor().titlecolor,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w600,
                            ),
                            // SizedBox(
                            //   width: width * 0.08,
                            // ),
                            CustomButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: height * 0.012,
                                  vertical: height * 0.005),
                              decoration: BoxDecoration(
                                  color: Mycolor().percentbtncolor,
                                  borderRadius:
                                      BorderRadius.circular(height * 0.01)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_upward_rounded,
                                    size: height * 0.022,
                                    color: Mycolor().percentdatacolor,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  CustomText(
                                    fontWeight: FontWeight.w600,
                                    text: "15%",
                                    fontSize: height * 0.017,
                                    textcolor: Mycolor().percentdatacolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
