import 'package:flutter/material.dart';
import 'package:geolanesproject/utilies/mycolors.dart';
import 'package:geolanesproject/widgets/custom_button.dart';
import 'package:geolanesproject/widgets/custom_text.dart';

class CardModel {
  final String? title;
  final String? amount;
  final Image image;
  final String? changeAmount;
  final String? changeLabel;
  final Color? changeAmountColor;

  CardModel({
    this.title,
    this.amount,
    required this.image,
    this.changeAmount,
    this.changeLabel,
    this.changeAmountColor,
  });
}

// Sample data for the cards with images
final List<CardModel> revenueData = [
  CardModel(
    title: "Total Revenue",
    amount: "\$20,000",
    image: Image.asset(
      "assets/icons/toatlrevnuicon.png",
      height: 13,
      fit: BoxFit.contain,
    ),
    changeAmount: "+\$150",
    changeLabel: "Today",
    changeAmountColor: Colors.green,
  ),
  CardModel(
    title: "Total Subscribers",
    amount: "5,000",
    image: Image.asset(
      "assets/icons/savedprofile.png",
      height: 13,
      fit: BoxFit.contain,
    ),
    changeAmount: "05",
    changeLabel: "Today",
    changeAmountColor: Colors.green,
  ),
  CardModel(
    title: "Tours & Itineraries",
    amount: "100",
    image: Image.asset(
      "assets/icons/gallery.png",
      height: 13,
      fit: BoxFit.contain,
    ),
    changeAmount: "08",
    changeLabel: "Active",
    changeAmountColor: Colors.green,
  ),
  CardModel(
    title: "Campaigns",
    amount: "1,500",
    image: Image.asset(
      "assets/icons/speaker.png",
      height: 13,
      fit: BoxFit.contain,
    ),
    changeAmount: "10",
    changeLabel: "Active",
    changeAmountColor: Colors.green,
  ),
];

// Background colors for each card image container, based on index
final List<Color> imageBackgroundColors = [
  Mycolor().exportmidcolor,
  Mycolor().messagebackgoundcolor,
  Mycolor().galerybackgorundcolor,
  Mycolor().speakerbackgorundcolor,
];

class RevenueGrid extends StatelessWidget {
  final double width;
  final double height;

  const RevenueGrid({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.03,
        mainAxisSpacing: width * 0.03,
        mainAxisExtent: height * 0.15,
      ),
      itemCount: revenueData.length,
      itemBuilder: (context, index) {
        final card = revenueData[index];
        return CustomButton(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Mycolor().tabbarcolor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Mycolor().fieldbordercolor),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title of the card
                  CustomText(
                    text: card.title!,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w600,
                    textcolor: Mycolor().subtitlecolor,
                  ),
                  // Displaying the image with background color and fit property
                  CustomButton(
                    height: height * 0.03,
                    width: width * 0.05,
                    decoration: BoxDecoration(
                      color: imageBackgroundColors[
                          index % imageBackgroundColors.length],
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Center(child: card.image),
                  ),
                ],
              ),
              // Main amount text
              CustomText(
                text: card.amount!,
                fontSize: height * 0.025,
                textcolor: Mycolor().titlecolor,
                fontWeight: FontWeight.w600,
              ),
              // Change amount and label
              Row(
                children: [
                  CustomText(
                    text: card.changeAmount!,
                    fontSize: height * 0.018,
                    textcolor: card.changeAmountColor,
                    fontWeight: FontWeight.w600,
                  ),
                  Icon(
                    Icons.arrow_drop_up_rounded,
                    color: card.changeAmountColor,
                  ),
                  CustomText(
                    text: card.changeLabel!,
                    fontSize: height * 0.018,
                    textcolor: Mycolor().subtitlecolor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
