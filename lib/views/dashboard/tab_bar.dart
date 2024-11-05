import 'package:flutter/material.dart';

import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:geolanesproject/views/purchase_screen.dart';
import 'package:geolanesproject/views/quick_status.dart';
import 'package:geolanesproject/views/revenu_screen.dart';
import 'package:geolanesproject/views/subscribe.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _CustomTabViewState createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.05),
        child: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(2.0),
            child: Container(
              color: Mycolor().tabunderlinecolor,
              height: 2.0,
            ),
          ),
          // elevation: height * 0.03,
          backgroundColor: Mycolor().tabbarcolor,
          title: SizedBox(
            height: height * 0.05,
            child: TabBar(
              controller: _tabController,
              indicator: UnderlineTabIndicator(
                borderSide:
                    BorderSide(width: 2.5, color: Mycolor().selectedcolor),
              ),
              labelColor: Mycolor().selectedcolor,
              unselectedLabelColor: Mycolor().titlecolor,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: height * 0.0115),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w600),
              tabs: const [
                Tab(text: 'Quick Status'),
                Tab(text: 'Revenue'),
                Tab(text: 'Purchases'),
                Tab(text: 'Subscribers'),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const QuickStatusScreen(),
          const SalesLineChart(),
          const PurchaseScreen(),
          SubscribeScreen(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
