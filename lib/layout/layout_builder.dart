
import 'package:flutter/material.dart';
import 'package:invitation/presentation/Screen/pages/all_image_veiw_screen.dart';

class Responsive_Layout_Gallery extends StatelessWidget {
 
  const Responsive_Layout_Gallery(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Gallery(type: layout.mobile);
        } else {
          return Gallery(type: layout.desktop) ;
        }
      },
    );
  }
}
