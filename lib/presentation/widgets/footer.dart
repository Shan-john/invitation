
import 'package:flutter/material.dart';
 import 'dart:html'as html;
import 'package:invitation/presentation/widgets/socialLink.dart';
import 'package:invitation/presentation/widgets/venuelink.dart';
/// **Footer Class Documentation**
///
/// The `Footer` class represents the footer section of a Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Footer widget
/// Footer footer = Footer();
/// ```
///
/// ## Overview
///
/// The `Footer` widget contains information about the designer and developer, including
/// a link to the GitHub profile and social media links.
///
/// ![Footer Overview](footer_overview.png)
/// +--------------------------------------+
// |                                      |
// |   Designed and Developed by          |
// |          [Shan John]                  |
// |                                      |
// |   [GitHub icon]  [LinkedIn icon]      |
// |   [Instagram icon]                    |
// |                                      |
// +--------------------------------------+

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          // Text indicating the designer and developer
          Text(
            "Designed and Developed by",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          
          // TextButton linking to the GitHub profile
          TextButton(
            onPressed: () =>   
              html.window.open("https://github.com/Shan-john",""),
            child: Text(
              "Shan John",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          
          // Row containing social media links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLink("Instagram", "https://www.instagram.com/s_h_a_n_j_o_h_n"),
              SocialLink("LinkedIn", "https://www.linkedin.com/in/shan-john"),
              SocialLink("GitHub", "https://github.com/Shan-john"),
            ],
          ),
        ],
      ),
    );
  }
}
