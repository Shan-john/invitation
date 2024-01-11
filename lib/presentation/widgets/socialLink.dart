import 'package:flutter/material.dart';
import 'dart:html'as html;



/// **SocialLink Class Documentation**
///
/// The `SocialLink` class represents a clickable link to a social media platform.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of SocialLink widget
/// SocialLink socialLink = SocialLink("GitHub", "https://github.com/example");
/// ```
class SocialLink extends StatelessWidget {
  /// The label or name of the social media platform.
  final String label;

  /// The URL of the social media profile or page.
  final String url;

  /// Constructor for the `SocialLink` class.
  ///
  /// The [label] parameter is the name or label of the social media platform.
  /// The [url] parameter is the URL to the social media profile or page.
  SocialLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () =>
          // Open the provided URL in a new browser window/tab
          html.window.open(url, ""),
        child: Text(label),
      ),
    );
  }
}
