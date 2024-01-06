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
            style: TextStyle(fontSize: 45, color: Colors.white,fontFamily: 'Pacifico',),
            textAlign: TextAlign.center,
          ),
          VenueLink("Home", "https://maps.app.goo.gl/DSHkCzfTCc1dSWmcA"),
          Gap(20),
          VenueLink("Church", churchemurl),
          Gap(20),
          VenueLink("Church", "https://maps.app.goo.gl/29J6VtXBtKWXYA1S9"),
        ],
      ),
    );
  }
}

String churchemurl =
    "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d251953.29041327952!2d76.59837068335862!3d9.353595703479481!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b0640e702446599%3A0x3b2ed664f62a09f!2sBethel%20Marthoma%20Syrian%20Church!5e0!3m2!1sen!2sin!4v1704200046337!5m2!1sen!2sin";
