import 'package:flutter/material.dart';
 
 
  
import 'dart:html' as html;

class VenueLink extends StatelessWidget {
  final String label;
  final String url;

  VenueLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {
         
          html.window.open(url, "");
        
        },
        child: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
 
 