import 'package:flutter/material.dart';
 
 
  
import 'dart:html' as html;

/// **VenueLink Class Documentation**
///
/// The `VenueLink` class represents a link button for navigating to specific venues or locations.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of VenueLink widget
/// VenueLink venueLink = VenueLink("Venue Name", "https://example.com/venue");
/// ```
///
/// ## Overview
///
/// The `VenueLink` widget is an ElevatedButton that, when pressed, opens a link to a specific venue or location.
///
/// ![VenueLink Overview](venue_link_overview.png)
class VenueLink extends StatelessWidget {
  /// The label representing the venue or location.
  final String label;

  /// The URL to navigate to when the button is pressed.
  final String url;

  /// Constructor for the `VenueLink` class.
  ///
  /// The [label] parameter is the label representing the venue or location.
  /// The [url] parameter is the URL to navigate to when the button is pressed.
  VenueLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      
      ),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {
          // Open the provided URL in a new window
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

 