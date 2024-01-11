import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';
import 'package:lottie/lottie.dart';
import 'dart:html';

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left : 8.0),
            child: Column(
              
              children: [
                Text(
                  "Save the Date\nfor the Wedding\nCelebration!",
                  style: TextStyle(fontSize: 27, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Save the date\nShone John and Sneha Paul's\nspecial day on 15/07/2024.\nJoin us in celebrating a new chapter!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Gap(30),
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            heigth: 350,
            image: "assets/img1.gif",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            heigth: 350,
            image: "assets/vdo.gif",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            heigth: 350,
            image: "assets/img2.jpg",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            heigth: 350,
            image: "assets/img2.gif",
          ),
        ],
      ),
    );
  }
}
