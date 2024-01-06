
import 'package:flutter/material.dart';

import '../widgets/circlecontainer.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            "https://i.pinimg.com/564x/ef/62/5c/ef625cfde997b24a0188076813a85545.jpg",
             
          ),
      Container(
        alignment: Alignment.center,
        height: 300,
        width: 350,
        decoration: BoxDecoration(image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage( "assests/savethedate.png" )
        )),
        
      
      ),
          Positioned(
            bottom: 0,
          
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleContainer("Date", "15"),
                CircleContainer("Month", "july"),
                CircleContainer("Year", "2024"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
