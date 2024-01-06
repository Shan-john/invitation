import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/eventtile.dart';
 

class Section4 extends StatelessWidget {
  const Section4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Upcoming\nevents",
            style: TextStyle(fontSize: 40, color: Colors.white),
            textAlign: TextAlign.center,
          ),   Gap(50),
          EventTile("Event Title 1",
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
          Gap(30),
          EventTile("Event Title 2",
              "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
        ],
      ),
    );
  }
}
