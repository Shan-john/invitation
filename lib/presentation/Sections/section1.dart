import 'package:flutter/material.dart';

import '../widgets/circlecontainer.dart';

/// **Section1 Class Documentation**
///
/// The `Section1` class represents a section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section1 widget
/// Section1 section1 = Section1();
/// ```
class Section1 extends StatelessWidget {
  

  /// Constructor for the `Section1` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section1({
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Display an image from a network URL
          Image.network(
            "https://i.pinimg.com/564x/ef/62/5c/ef625cfde997b24a0188076813a85545.jpg",
            fit: BoxFit.fill,
          ),

          // Positioned row at the bottom of the image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Display circle container with date
                CircleContainer("Date", "27"),

                // Display circle container with month
                CircleContainer("Month", "June"),

                // Display circle container with year
                CircleContainer("Year", "2024"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
