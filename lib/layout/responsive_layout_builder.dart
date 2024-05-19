import 'package:flutter/material.dart';
import 'package:invitation/presentation/Screen/mainScreen.dart';

/// Widget that determines the layout type based on the screen width.
/// If the screen width is less than 600, it displays the mobile layout (MyHomePage),
/// otherwise, it displays the desktop layout (desktopdisplay).
class Responsive_Layout extends StatelessWidget {
  const Responsive_Layout({
    Key? key,
  }) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return MyHomePage(size: 100,);
        } else {
          return Container(
              width:500,
              color: Colors.black,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric( 
                horizontal: MediaQuery.of(context).size.width / 4,
              ), 
              child: MyHomePage(size: MediaQuery.of(context).size.width / 15,));
        }
      },
    );
  }
}

/// Widget representing the desktop layout.
/// Displays a message suggesting the user switch to mobile view for a better experience.
class desktopdisplay extends StatelessWidget {
  const desktopdisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            "For a better experience, switch to mobile view! Desktop view is not supported.",
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
