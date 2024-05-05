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
          Text(
            "Upcoming\nevents",
            style: TextStyle(fontSize: 40, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Gap(50),
          // Display EventTiles with event information and images
          EventTile(betrothal,
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
          Gap(30),
          EventTile(marriage,
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
        ],
      ),
    );
  }
}

const String betrothal ="Betrothal: Moday ,24th June 2024, Morning 11.30  @CSI Heritage, Guruvayur Road,Kunnamkulam, Thrissur (Dist)";
const String marriage = "Marriage: Thursday, 27th June 2024, Morning 11:00 @ Bethel Marthoma Syrian Church, Ranni-Perunad, Pathanamthitta (Dist)";