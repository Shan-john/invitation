import 'package:flutter/material.dart';

/// **CircleContainer Class Documentation**
///
/// The `CircleContainer` class represents a circular container with label and value.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of CircleContainer widget
/// CircleContainer circleContainer = CircleContainer("Label", "Value");
/// ```
class CircleContainer extends StatelessWidget {
  /// The label to be displayed inside the circle.
  final String label;
  final double size;

  /// The value to be displayed inside the circle.
  final String value;

  /// Constructor for the `CircleContainer` class.
  ///
  /// The [label] parameter is the label to be displayed inside the circle.
  /// The [value] parameter is the value to be displayed inside the circle.
  CircleContainer(this.label, this.value, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            const Color.fromARGB(255, 255, 255, 255), // or any color you prefer
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the label inside the circle
          Text(
            label,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),

          // Display the value inside the circle
          Text(
            value,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
