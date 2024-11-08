import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:geolanesproject/widgets/custom_button.dart';
import 'package:geolanesproject/widgets/custom_text.dart';

class SalesLineChart extends StatelessWidget {
  const SalesLineChart({super.key});

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
            SizedBox(
              height: height * 0.01,
            ),
            CustomText(
              text: "Revenue Generated",
              fontSize: height * 0.0245,
              fontWeight: FontWeight.w600,
              textcolor: Mycolor().titlecolor,
            ),
            SizedBox(
              height: height * 0.005,
            ),
            CustomText(
              text: "Total revenue generated by the enterprise",
              fontSize: height * 0.014,
              fontWeight: FontWeight.w400,
              textcolor: Mycolor().subtitlecolor,
            ),
            // SizedBox(
            //   height: height * 0.02,
            // ),
            CustomButton(
              // height: height * 0.5,
              margin: EdgeInsets.only(top: height * 0.02),
              padding: EdgeInsets.only(
                  top: height * 0.02,
                  right: width * 0.1,
                  left: width * 0.05,
                  bottom: height * 0.01),
              decoration: BoxDecoration(
                color: Mycolor().tabbarcolor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //drop down button..........
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: width * 0.2,
                        child: CustomButton(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: width * 0.002,
                                  color: Mycolor().exportbordercolor),
                              color: Mycolor().exportmidcolor,
                              borderRadius:
                                  BorderRadius.circular(height * 0.005)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * 0.01,
                              ),
                              CustomText(
                                fontWeight: FontWeight.w600,
                                text: "Monthly",
                                fontSize: height * 0.015,
                                textcolor: Mycolor().exporticoncolor,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Mycolor().exportbordercolor,
                              )
                            ],
                          ),
                          onTap: () {
                            log("message");
                          },
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Dots(color: Mycolor().exportbordercolor),
                          SizedBox(width: 4),
                          Text("Tours",
                              style: TextStyle(
                                  color: Mycolor().exportbordercolor)),
                          SizedBox(width: 16),
                          Dots(color: Mycolor().graphlincolor),
                          SizedBox(width: 4),
                          Text("Itineraries",
                              style: TextStyle(color: Mycolor().graphlincolor)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),

                  ///chart line..........
                  AspectRatio(
                    aspectRatio: 1.5,
                    child: LineChart(
                      LineChartData(
                        //start from 0 on y axis..........
                        minY: 0,
                        gridData: FlGridData(
                          show: true,
                          horizontalInterval: 5000,
                          getDrawingHorizontalLine: (value) => FlLine(
                              color: Mycolor().fieldbordercolor,
                              strokeWidth: 1),
                          drawVerticalLine: false,
                        ),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 5000,
                              reservedSize: 50,
                              getTitlesWidget: (value, meta) {
                                return Text(
                                  '\$${(value / 1000).toStringAsFixed(0)}k',
                                  style: TextStyle(
                                    color: Mycolor().subtitlecolor,
                                    fontSize: 12,
                                  ),
                                );
                              },
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 1,
                              getTitlesWidget: (value, meta) {
                                const titles = [
                                  'Jan',
                                  '',
                                  '',
                                  'Feb',
                                  "",
                                  "",
                                  "",
                                  'Mar',
                                  '',
                                  '',
                                  '',
                                  'Apr',
                                  '',
                                  '',
                                  '',
                                  'May',
                                  '',
                                  '',
                                  '',
                                  'jun',
                                  "",
                                ];
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.5),
                                  child: Text(
                                    titles[value.toInt() % titles.length],
                                    style: TextStyle(
                                      color: Mycolor().subtitlecolor,
                                      fontSize: 12,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border(
                            left: BorderSide(
                                color: Mycolor().subtitlecolor, width: 1),
                            bottom: BorderSide(
                                color: Mycolor().subtitlecolor, width: 1),
                          ),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 19000),
                              const FlSpot(1, 14000),
                              const FlSpot(2, 18000),
                              const FlSpot(3, 15000),
                              const FlSpot(4, 20000),
                              const FlSpot(5, 12000),
                              const FlSpot(6, 11000),
                              const FlSpot(7, 11000),
                              const FlSpot(8, 10000),
                              const FlSpot(9, 23200),
                              const FlSpot(10, 19300),
                              const FlSpot(11, 24500),
                              const FlSpot(12, 19000),
                              const FlSpot(13, 18000),
                              const FlSpot(14, 24000),
                              const FlSpot(15, 22000),
                              const FlSpot(16, 13000),
                              const FlSpot(17, 17000),
                              const FlSpot(18, 9000),
                              const FlSpot(19, 20000),
                              const FlSpot(20, 22000),
                            ],
                            isCurved: true,
                            color: Mycolor().exportbordercolor,
                            barWidth: 2,
                            dotData: const FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 12000),
                              const FlSpot(1, 9000),
                              const FlSpot(2, 14000),
                              const FlSpot(3, 11000),
                              const FlSpot(4, 16000),
                              const FlSpot(5, 12000),
                              const FlSpot(6, 19000),
                              const FlSpot(7, 18000),
                              const FlSpot(8, 24000),
                              const FlSpot(9, 22000),
                              const FlSpot(10, 13000),
                              const FlSpot(11, 24500),
                              const FlSpot(12, 19000),
                              const FlSpot(13, 18000),
                              const FlSpot(14, 14000),
                              const FlSpot(15, 12000),
                              const FlSpot(16, 22000),
                              const FlSpot(17, 22000),
                              const FlSpot(18, 22000),
                              const FlSpot(19, 7000),
                              const FlSpot(20, 24000),
                            ],
                            isCurved: true,
                            color: Mycolor().graphlincolor,
                            barWidth: 2,
                            dotData: const FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        lineTouchData: LineTouchData(
                          touchTooltipData: LineTouchTooltipData(
                            getTooltipItems: (List<LineBarSpot> touchedSpots) {
                              return touchedSpots.map((spot) {
                                return LineTooltipItem(
                                  '${spot.bar.color == Mycolor().exportbordercolor ? "Tours" : "Itineraries"}: ${spot.y ~/ 1000}k',
                                  TextStyle(color: spot.bar.color),
                                );
                              }).toList();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final Color color;

  const Dots({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
