import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/Sections/section1.dart';
import 'package:invitation/presentation/Sections/section2.dart';
import 'package:invitation/presentation/Sections/section3.dart';
import 'package:invitation/presentation/Sections/section4.dart';
import 'package:invitation/presentation/Sections/section5.dart';
import 'package:invitation/presentation/core.dart';
import 'package:invitation/presentation/widgets/camera_gallery_pick_menu.dart';
import 'package:invitation/service/firebasehelper.dart';

/// **MyHomePage Class Documentation**
///
/// The `MyHomePage` class represents the main screen of the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of MyHomePage widget
/// MyHomePage homePage = MyHomePage();
/// ```
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagedata = [];
  List<String> reversediamgeData = [];
  @override
  void initState() {
    fetchdata();

    super.initState();
  }

  void fetchdata() async {
    try {
      imagedata = await firebasehelper.instance.getAllImages();
      reversediamgeData = imagedata.reversed.toList();
      print(reversediamgeData[3]);
    } catch (e) {
      // reversediamgeData.addAll ([
      //    Assetsimages.lanscape1,
      //   Assetsimages.land1,
      //   Assetsimages.land2,
      //   Assetsimages.land3,
      //   Assetsimages.land4,
      // ]

      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Selectionmenu();
                });
          },
          tooltip: 'Take Photos',
          child: const Icon(
            Icons.add_photo_alternate_outlined,
            size: 36,
            color: const Color.fromARGB(255, 99, 99, 99),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Section 1
          // Gap(150),
          Section1(),
          Gap(100),
          // Section 2
          Section2(
           
          ),
          Gap(200),
          // Section 3
          Section3(),
          Gap(200),
          // Section 4
          Section4(),
          Gap(200),
          // Section 5
          Section5(),
        ],
      ),
    );
  }
}
