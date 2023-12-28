
import 'package:flutter/material.dart';

import '../widgets/circlecontainer.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://i.pinimg.com/564x/ef/62/5c/ef625cfde997b24a0188076813a85545.jpg",
           
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleContainer("Date", "10"),
            CircleContainer("Month", "july"),
            CircleContainer("Year", "2024"),
          ],
        ),
      ],
    );
  }
}
