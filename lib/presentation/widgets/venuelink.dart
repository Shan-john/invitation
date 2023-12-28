
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VenueLink extends StatelessWidget {
  final String label;
  final String url;

  VenueLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () =>
            launch(url), // import 'package:url_launcher/url_launcher.dart';
        child: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}