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
          VenueLink("Home", "https://www.google.com/maps/place/Shan+John/@9.3572059,76.8667091,21z/data=!4m6!3m5!1s0x3b0641fdf32f1935:0xfca585c8b7c91f3b!8m2!3d9.3573258!4d76.8670217!16s%2Fg%2F11vcmwftm_?entry=ttu"),
          Gap(20),
          VenueLink("Church", "https://www.google.com/maps/place/Bethel+Marthoma+Syrian+Church/@9.3829757,76.6729347,11z/data=!4m6!3m5!1s0x3b0640e702446599:0x3b2ed664f62a09f!8m2!3d9.3623187!4d76.8637065!16s%2Fg%2F11_qvwdld?entry=ttu"),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
        ],
      ),
    );
  }
}
