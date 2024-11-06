// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:geolanesproject/utilies/mycolors.dart';

// import 'package:geolanesproject/widgets/custom_text.dart';

// import 'package:geolanesproject/widgets/profile_bar.dart';
// import 'package:geolanesproject/views/dashboard/tab_bar.dart';
// import 'package:geolanesproject/widgets/textformfield.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Mycolor().backgroundcolor,
//         body: Padding(
//           padding: EdgeInsets.symmetric(
//               vertical: height * 0.025, horizontal: width * 0.04),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: SizedBox(
//                   height: height * 0.14,
//                   width: width * 0.9,
//                   child: Column(
//                     children: [
//                       const ProfileBar(),
//                       SizedBox(
//                         height: height * 0.015,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                               height: height * 0.05,
//                               width: width * 0.65,
//                               child: const CustomTextFormField()),
//                           const Spacer(),
//                           CircleAvatar(
//                               radius: height * 0.022,
//                               backgroundColor: Mycolor().avatarcolor,
//                               child: Badge(
//                                 backgroundColor: Mycolor().badgecolor,
//                                 smallSize: height * 0.007,
//                                 alignment: const AlignmentDirectional(-.7, .1),
//                                 child: Image.asset(
//                                   "assets/icons/notificationicon.png",
//                                   height: height * 0.025,
//                                 ),
//                               )),
//                           Padding(
//                             padding:
//                                 EdgeInsets.symmetric(horizontal: width * 0.02),
//                             child: CircleAvatar(
//                                 radius: height * 0.022,
//                                 backgroundColor: Mycolor().avatarcolor,
//                                 child: Badge(
//                                   backgroundColor: Mycolor().badgecolor,
//                                   smallSize: height * 0.007,
//                                   alignment: const AlignmentDirectional(-1, 0),
//                                   child: Image.asset(
//                                     "assets/icons/messageicon.png",
//                                     height: height * 0.025,
//                                   ),
//                                 )),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: height * 0.007,
//               ),
//               CustomText(
//                 text: "Welcome Global Travelers",
//                 fontSize: height * 0.0245,
//                 fontWeight: FontWeight.w600,
//               ),
//               SizedBox(
//                 height: height * 0.005,
//               ),
//               CustomText(
//                 text: "Here is what’s happening at GeoLanes!",
//                 fontSize: height * 0.016,
//                 fontWeight: FontWeight.w400,
//                 textcolor: Mycolor().subtitlecolor,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                 child: SizedBox(
//                     height: height * 0.65,
//                     width: width,
//                     child: const CustomTabView()),
//               ),
//             ],
//           ),
//         ),
//         // bottomNavigationBar: SizedBox(
//         //     height: height * 0.07, child: const BottomNavigationbarScreen()),
//       ),
//     );
//   }
// }

// dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:geolanesproject/views/route/bottom_navigationbar.dart';
import 'package:geolanesproject/widgets/custom_text.dart';
import 'package:geolanesproject/widgets/profile_bar.dart';
import 'package:geolanesproject/views/dashboard/tab_bar.dart';
import 'package:geolanesproject/widgets/textformfield.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Mycolor().backgroundcolor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.025, horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: height * 0.14,
                    width: width * 0.9,
                    child: Column(
                      children: [
                        const ProfileBar(),
                        SizedBox(height: height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: height * 0.05,
                              width: width * 0.65,
                              child: const CustomTextFormField(),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: height * 0.022,
                              backgroundColor: Mycolor().avatarcolor,
                              child: Badge(
                                backgroundColor: Mycolor().badgecolor,
                                smallSize: height * 0.007,
                                alignment: const AlignmentDirectional(-.7, .1),
                                child: Image.asset(
                                  "assets/icons/notificationicon.png",
                                  height: height * 0.025,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.02),
                              child: CircleAvatar(
                                radius: height * 0.022,
                                backgroundColor: Mycolor().avatarcolor,
                                child: Badge(
                                  backgroundColor: Mycolor().badgecolor,
                                  smallSize: height * 0.007,
                                  alignment: const AlignmentDirectional(-1, 0),
                                  child: Image.asset(
                                    "assets/icons/messageicon.png",
                                    height: height * 0.025,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.007),
                CustomText(
                  text: "Welcome Global Travelers",
                  fontSize: height * 0.0245,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: height * 0.005),
                CustomText(
                  text: "Here is what’s happening at GeoLanes!",
                  fontSize: height * 0.016,
                  fontWeight: FontWeight.w400,
                  textcolor: Mycolor().subtitlecolor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: SizedBox(
                      height: height * 0.65,
                      width: width,
                      child: const CustomTabView()),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
          images: [
            Image.asset('assets/icons/dashboardicon.png',
                height: height * 0.03),
            Image.asset('assets/icons/analyticsicon.png',
                height: height * 0.03),
            Image.asset('assets/icons/marketingicon.png',
                height: height * 0.03),
            Image.asset('assets/icons/contenticon.png', height: height * 0.03),
            Image.asset('assets/icons/more.png', height: height * 0.03),
          ],
        ),
      ),
    );
  }
}
