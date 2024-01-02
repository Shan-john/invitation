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
    return  Container(
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
              image: "assests/map.png",
              heigth: 350,
              alignmentGeometry: Alignment.centerLeft),
          Text(
            "Click on the link below\nExplore the location.",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Be there",
            style: TextStyle(fontSize: 45, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          VenueLink("Home", "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d246.04558100042217!2d76.8667091!3d9.3572059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b0641fdf32f1935%3A0xfca585c8b7c91f3b!2sShan%20John!5e0!3m2!1sen!2sin!4v1704198414569!5m2!1sen!2sin"),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
          Gap(20),
          VenueLink("Church", "https://goo.gl/maps/R39Z1GBjP5iwhr699"),
        ],
      ),
    );
  }
}
