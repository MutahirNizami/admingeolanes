import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:geolanesproject/widgets/custom_button.dart';
import 'package:geolanesproject/widgets/custom_text.dart';

class SubscribeScreen extends StatelessWidget {
  SubscribeScreen({super.key});

  final List<CountrySubscriber> subscriberData = [
    CountrySubscriber(
      country: "USA",
      subscribers: 240,
      percentage: 0.2,
      color: Colors.blueAccent,
    ),
    CountrySubscriber(
      country: "Japan",
      subscribers: 240,
      percentage: 0.1,
      color: Mycolor().badgecolor,
    ),
    CountrySubscriber(
      country: "France",
      subscribers: 240,
      percentage: 0.15,
      color: Mycolor().exportbordercolor,
    ),
    CountrySubscriber(
      country: "Germany",
      subscribers: 240,
      percentage: 0.50,
      color: Mycolor().customerdropiconcolor,
    ),
    CountrySubscriber(
      country: "South Korea",
      subscribers: 240,
      percentage: 0.25,
      color: Mycolor().upiconcolor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Mycolor().backgroundcolor,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          CustomButton(
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            height: height * 0.22,
            decoration: BoxDecoration(
                color: Mycolor().subtitlecolor,
                borderRadius: BorderRadius.circular(8)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: subscriberData.length,
              itemBuilder: (context, index) {
                final data = subscriberData[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    children: [
                      // Circular avatar
                      CircleAvatar(
                        radius: height * 0.025,
                        backgroundColor: Mycolor().subtitlecolor,
                      ),
                      SizedBox(width: width * 0.025),

                      // Country name and subscribers count
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: data.country,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w600,
                            textcolor: Mycolor().titlecolor,
                          ),
                          CustomText(
                            text: "${data.subscribers} Subscribers",
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            textcolor: Mycolor().subtitlecolor,
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                        child: Row(
                          children: [
                            // Progress indicator......
                            SizedBox(
                              width: 50,
                              height: height * 0.01,
                              child: LinearProgressIndicator(
                                value: data.percentage,
                                backgroundColor: Mycolor().fieldbordercolor,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(data.color),
                                borderRadius:
                                    BorderRadius.circular(height * 0.02),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            // Percentage text
                            Text(
                              "${(data.percentage * 100).toStringAsFixed(0)}%",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CountrySubscriber {
  final String country;
  final int subscribers;
  final double percentage;
  final Color color;

  CountrySubscriber({
    required this.country,
    required this.subscribers,
    required this.percentage,
    required this.color,
  });
}
