import 'package:flutter/material.dart';
import 'dart:html'as html;




class SocialLink extends StatelessWidget {
  final String label;
  final String url;

  SocialLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () =>
         
          html.window.open(url,""),
       
        child: Text(label),
      ),
    );
  }
}
