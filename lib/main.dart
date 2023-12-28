
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/camera_gallery_pick_menu.dart';
import 'package:invitation/presentation/widgets/circlecontainer.dart';
import 'package:invitation/presentation/widgets/eventtile.dart';
import 'package:invitation/presentation/widgets/footer.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';
 
import 'package:invitation/presentation/widgets/venuelink.dart';
 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB8RWCMUz213zmPtAZB_NVq4zBPqk-dXAI",
        authDomain: "wedding-invitation-card-sj.firebaseapp.com",
        projectId: "wedding-invitation-card-sj",
        storageBucket: "wedding-invitation-card-sj.appspot.com",
        messagingSenderId: "309684858289",
        appId: "1:309684858289:web:b50cfe39b94b564783e190"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      floatingActionButton: FloatingActionButton(
       
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Selectionmenu();
              });
        },
        tooltip: 'Pick Image',
        child: Icon(
          Icons.add_photo_alternate_outlined,
          size: 34,
          color: const Color.fromARGB(255, 99, 99, 99),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section 1
            Container(
              child: Column(
                children: [
                  Image.network(
                    "https://i.pinimg.com/564x/ef/62/5c/ef625cfde997b24a0188076813a85545.jpg",
                    // height: 100, // Set your desired height
                    // width: 100, // Set your desired width
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleContainer("Date", "10"),
                      CircleContainer("Month", "Oct"),
                      CircleContainer("Year", "2023"),
                    ],
                  ),
                ],
              ),
            ),
            Gap(120),
            // Section 2
            Container(
              child: Column(
                children: [
                  Text(
                    "Save the Date\nfor the Wedding\nCelebration!",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Save the date\nShone John and Sneha Ann Paul's\nspecial day on [Wedding Date].\nJoin us in celebrating a new chapter!",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Gap(30),
                  imagesection(
                    alignmentGeometry: Alignment.centerRight,
                    heigth: 350,
                    image: "assests/img1.gif",
                  ),
                  imagesection(
                    alignmentGeometry: Alignment.centerLeft,
                    heigth: 350,
                    image: "assests/vdo.gif",
                  ),
                  imagesection(
                    alignmentGeometry: Alignment.centerRight,
                    heigth: 350,
                    image: "assests/img2.jpg",
                  ),
                  imagesection(
                    alignmentGeometry: Alignment.centerLeft,
                    heigth: 350,
                    image: "assests/img2.gif",
                  ),
                ],
              ),
            ),
            Gap(120),
            // Section 3
            Container(
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
                  VenueLink("Church", "https://goo.gl/maps/R39Z1GBjP5iwhr699"),
                ],
              ),
            ),
            Gap(50),
            // Section 4
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Upcoming\nevents",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  EventTile("Event Title 1",
                      "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
                  Gap(20),
                  EventTile("Event Title 2",
                      "https://i.pinimg.com/564x/99/b0/24/99b024a8699ff4028151c7f6cb313398.jpg"),
                ],
              ),
            ),
            Gap(120),
            // Section 5
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Image.network(
                        "https://i.pinimg.com/564x/3a/35/14/3a35143c3e8c3fb2bdcab412e42f40e1.jpg"),
                  ),
                  Container(
                    height: 2,
                    color: const Color.fromARGB(
                        255, 154, 209, 255), // or any color you prefer
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
