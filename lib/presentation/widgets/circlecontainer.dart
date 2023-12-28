
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final String label;
  final String value;

  CircleContainer(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            const Color.fromARGB(255, 255, 255, 255), // or any color you prefer
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}