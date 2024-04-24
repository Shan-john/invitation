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
          EventTile("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. I ",
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
          Gap(30),
          EventTile(" is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. I ",
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
        ],
      ),
    );
  }
}
