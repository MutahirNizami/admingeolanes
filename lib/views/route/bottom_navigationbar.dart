// custom_bottom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final List<Image> images;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(height * 0.02)),
        boxShadow: [
          BoxShadow(
            color: Mycolor().exportbordercolor,
            spreadRadius: 0.5,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Mycolor().tabbarcolor,
        selectedItemColor: Mycolor().selectedcolor,
        unselectedItemColor: Mycolor().titlecolor,
        items: List.generate(images.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    selectedIndex == index
                        ? Mycolor().selectedcolor
                        : Mycolor().subtitlecolor,
                    BlendMode.srcIn,
                  ),
                  child: images[index],
                ),
                const SizedBox(height: 4),
                Text(
                  getLabelForIndex(index),
                  style: TextStyle(
                    color: selectedIndex == index
                        ? Mycolor().selectedcolor
                        : Mycolor().titlecolor,
                    fontSize: height * 0.01,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
      ),
    );
  }

  String getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Analytics';
      case 2:
        return 'Marketing';
      case 3:
        return 'Content';
      case 4:
        return 'More';
      default:
        return '';
    }
  }
}
