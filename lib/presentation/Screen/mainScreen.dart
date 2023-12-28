import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/Sections/section1.dart';
import 'package:invitation/presentation/Sections/section2.dart';
import 'package:invitation/presentation/Sections/section3.dart';
import 'package:invitation/presentation/Sections/section4.dart';
import 'package:invitation/presentation/Sections/section5.dart';
import 'package:invitation/presentation/camera_gallery_pick_menu.dart';

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
        tooltip: 'Take Photos',
        child:const Icon(
          Icons.add_photo_alternate_outlined,
          size: 34,
          color: const Color.fromARGB(255, 99, 99, 99),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // Section 1
            Section1(),
            Gap(120),
            // Section 2
            Section2(),
            Gap(120),
            // Section 3
            Section3(),
            Gap(50),
            // Section 4
            Section4(),
            Gap(120),
            // Section 5
            Section5(),
          ],
        ),
      ),
    );
  }
}
