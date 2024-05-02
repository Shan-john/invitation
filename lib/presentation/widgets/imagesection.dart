
import 'package:flutter/material.dart';
import 'package:invitation/presentation/core.dart';
// +-----------------------------+
// |         imagesection         |
// |  +-----------------------+  |
// |  |      Image Asset     |  |
// |  |   ("assets/image.jpg")|  |
// |  +-----------------------+  |
// |                             |
// +-----------------------------+

/// **imagesection Class Documentation**
///
/// The `imagesection` class represents a section with an image in a Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of imagesection widget
/// imagesection imageSection = imagesection(
///   image: "assets/example_image.jpg",
///   height: 200,
///   alignmentGeometry: Alignment.center,
/// );
/// ```
///
/// ## Overview
///
/// The `imagesection` widget displays an image with specified height and alignment.
///
/// ![imagesection Overview](imagesection_overview.png)
class imagesection extends StatelessWidget {
  /// The path to the image asset to be displayed.
  final String image;

  /// The height of the image section.
  final double height;
 
  /// The alignment of the image within the section.
  final AlignmentGeometry alignmentGeometry;

  /// Constructor for the `imagesection` class.
  
  /// The [image] parameter is the path to the image asset.
  /// The [height] parameter is the height of the image section.
  /// The [alignmentGeometry] parameter is the alignment of the image within the section.
  const imagesection({
    super.key,
    required this.image,
    required this.height,
    required this.alignmentGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignmentGeometry,
      height: height,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Image(image: AssetImage(image))
    );
  }
}
