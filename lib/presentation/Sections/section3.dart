import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';
import 'package:invitation/presentation/widgets/venuelink.dart';
/// **Section3 Class Documentation**
///
/// The `Section3` class represents another section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section3 widget
/// Section3 section3 = Section3();
/// ```
class Section3 extends StatelessWidget {
  /// Constructor for the `Section3` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Text content for the section
          Text(
            "Discover\nOur Wedding Venues",
            style: TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Join Us\nin Celebrating Love and Togetherness",
            style: TextStyle(fontSize: 20, color: Colors.white54),
            textAlign: TextAlign.center,
          ),
          // Display an image section with a specific alignment
          imagesection(
              image: "assets/map.png",
              height: 350,
              alignmentGeometry: Alignment.centerLeft),
          Text(
            "Click on the link below\nExplore the location.",
            style: TextStyle(fontSize: 20, color: Colors.white54),
            textAlign: TextAlign.center,
          ),
          Gap(20),
          Text(
            "Be there",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
            textAlign: TextAlign.center,
          ),
          Gap(20),
          // Display VenueLinks for different locations
          VenueLink("Home", "https://maps.app.goo.gl/DSHkCzfTCc1dSWmcA"),
          Gap(20),
          VenueLink("Wedding At", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
        ],
      ),
    );
  }
}
