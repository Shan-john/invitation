import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/eventtile.dart';

/// **Section4 Class Documentation**
///
/// The `Section4` class represents another section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section4 widget
/// Section4 section4 = Section4();
/// ```
class Section4 extends StatelessWidget {
  /// Constructor for the `Section4` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section4({
    super.key,
  });
 

 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text content for the section
          // Text(
          //   "Upcoming\nevents",
          //   style: TextStyle(fontSize: 40, color: Colors.white),
          //   textAlign: TextAlign.center,
          // ),
          Gap(50),
          EventTile(
            "Marriage:",
            "https://i.pinimg.com/564x/8e/47/bd/8e47bd1e5eb94024bd6b1357dae07c03.jpg",
            "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9",
            marriage,
          ),

          Gap(30),
          // Display EventTiles with event information and images
          EventTile(
            "Betrothal:",
            "https://i.pinimg.com/564x/36/b9/44/36b944d6b966cbdb9fa0566c11ace163.jpg",
            "https://maps.app.goo.gl/YKsYDJwqX44kKozx6",
            betrothal,
          ),
        ],
      ),
    );
  }
}

const String betrothal =
    " Moday ,24th June 2024, Morning 11.30  @CSI Heritage, Guruvayur Road,Kunnamkulam, Thrissur (Dist)";
const String marriage =
    " Thursday, 27th June 2024, Morning 11:00 @ Bethel Marthoma Syrian Church, Ranni-Perunad, Pathanamthitta (Dist)";
