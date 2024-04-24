import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/widgets/autoimagesilder.dart';
import 'package:invitation/presentation/widgets/button.dart';
import 'package:invitation/presentation/widgets/imagesection.dart';

/// **Section2 Class Documentation**
///
/// The `Section2` class represents another section in the Flutter application.
/// It is a StatefulWidget, meaning it does  have   mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section2 widget
/// Section2 section2 = Section2();
/// ```
class Section2 extends StatefulWidget {
  /// Constructor for the `Section2` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section2({
    super.key,
  });

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text content for the section
       

            Gap(50),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column( 
 
              children: [
                Text(
                  "Save the Date\nfor the Wedding\nCelebration!",
                  style: TextStyle(fontSize: 27, color: Colors.white,fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Save the date\nShone John and Rinila Mary Jobson's\nspecial day on 15/07/2024.\nJoin us in celebrating a new chapter!",
                  style: TextStyle(fontSize: 20, color: Colors.white54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Gap(30),
          // Display image sections with different alignments
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            height: 350,
            image: "assets/map.png",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            height: 350,
            image: "assets/map.png",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerRight,
            height: 350,
            image: "assets/map.png",
          ),
          imagesection(
            alignmentGeometry: Alignment.centerLeft,
            height: 350,
            image: "assets/map.png",
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top: 50),
            child: Text(
                  
                "Gallery", 
                style: TextStyle(fontSize: 45, color: Colors.white54,fontWeight: FontWeight.w700,letterSpacing: 2),
                 
              ),
          ),
          Gap(50),
            CarouselDemo(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(150),
              Center(
                child: Text(
                  
                "Are you interested in \n knowing more  about the \n Shone John and Rinila Mary Jobson..!", 
                style: TextStyle(fontSize: 25, color: Colors.white54),
                textAlign: TextAlign.center,
                            ),
              ),
            Gap(50),
           
           Center(
             child: Column(
             
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 PrimaryButton("Groom", 50 , () => null,150),
                 Gap(50),
                  PrimaryButton("Bride", 50 , () => null,150),
                
               ],
             ),
           )
          ],),
          
        ],
      ),
    );
  }
}
