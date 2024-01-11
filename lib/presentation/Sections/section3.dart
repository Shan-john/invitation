import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';
import 'package:invitation/presentation/widgets/venuelink.dart';

class Section3 extends StatelessWidget {
  const Section3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 600,
      child: Column(
        children: [
          Text(
            "Discover\nOur Wedding Venues",
            style: TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Join Us\nin Celebrating Love and Togetherness",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          imagesection(
              image: "assets/map.png",
              heigth: 350,
              alignmentGeometry: Alignment.centerLeft),
          Text(
            "Click on the link below\nExplore the location.",
            style: TextStyle(fontSize: 20, color: Colors.white),
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
          VenueLink("Home", "https://maps.app.goo.gl/DSHkCzfTCc1dSWmcA"),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
        ],
      ),
    );
  }
}
