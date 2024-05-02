
import 'package:flutter/material.dart';
import 'package:invitation/presentation/core.dart';
import 'package:invitation/presentation/widgets/footer.dart';

/// **Section5 Class Documentation**
///
/// The `Section5` class represents the final section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section5 widget
/// Section5 section5 = Section5();
/// ```
class Section5 extends StatelessWidget {
  /// Constructor for the `Section5` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Display an image aligned to the center-right
          Container(
            alignment: Alignment.centerRight,
            child: Image.asset(
                Assetsimages.protraitInvitationcard),
          ),
          // Divider line
          Container(
            height: 2,
            color: const Color.fromARGB(
                255, 154, 209, 255), // or any color you prefer
            margin: EdgeInsets.only(top: 50),
          ),
          // Display the Footer widget
          Footer(),
        ],
      ),
    );
  }
}
