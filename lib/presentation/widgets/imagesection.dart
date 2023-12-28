
import 'package:flutter/material.dart';

class imagesection extends StatelessWidget {
  final String image;
  final double heigth;
  final AlignmentGeometry alignmentGeometry;
  const imagesection({
    super.key,
    required this.image,
    required this.heigth,
    required this.alignmentGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignmentGeometry,
        height: heigth,
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Image.asset(image));
  }
}


