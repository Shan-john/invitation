import 'package:flutter/material.dart';
import 'package:invitation/presentation/Screen/mainScreen.dart';

class Responsive_Layout extends StatelessWidget {
  const Responsive_Layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MyHomePage();
        } else {
          return desktopdisplay();
        }
      },
    );
  }
}

class desktopdisplay extends StatelessWidget {
  const desktopdisplay({super.key});

  @override
  Widget build(BuildContext context) {
    
    return
    const Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
      height: 50,
      child: Center(
        child: Text(
          "For a better experience, switch to mobile view! Desktop is not supported.",
          style: TextStyle(
              fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        ),
      ),
    )) ;
  }
}
