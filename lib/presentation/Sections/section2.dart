import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';


/// **Section2 Class Documentation**
///
/// The `Section2` class represents another section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section2 widget
/// Section2 section2 = Section2();
/// ```
class Section2 extends StatelessWidget {
  /// Constructor for the `Section2` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text content for the section
          Padding( 
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(
                  "Save the Date\nfor the Wedding\nCelebration!",
                  style: TextStyle(fontSize: 27, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Save the date\nShone John and Rinila Mary Jobson's\nspecial day on 15/07/2024.\nJoin us in celebrating a new chapter!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center, 
                ),
              ],
            ),
          ),
          Gap(30),
          // Display image sections with different alignments
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            height: 350,
            image: "assets/map.png",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            height: 350,
            image: "assets/map.png",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            height: 350,
            image: "assets/map.png", 
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            height: 350, 
            image: "assets/map.png",
          ),
        ],
      ),
    );
  }
}
