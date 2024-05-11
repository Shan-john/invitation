import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:html' as html;
// -------------------------------
// |       EventTile Widget      |
// -------------------------------
// |      Row                      |
// |   -----------------       |
// |   |  Image        |       |
// |   | (Network)     |       |
// |   | Height: 180   |       |
// |   | Width: 160    |       |
// |   -----------------       |
// |                             |
// |   -----------------       |
// |   |   Text (Title)|       |
// |   |   (White)     |       |
// |   -----------------       |
// -------------------------------

/// **EventTile Class Documentation**
///
/// The `EventTile` class represents a tile for displaying an event with a title and image.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of EventTile widget
/// EventTile eventTile = EventTile("Event Title", "https://example.com/image.jpg");
/// ```
class EventTile extends StatelessWidget {
  /// The title of the event to be displayed.
  final String title;
  final String label;

  /// The URL of the image associated with the event.
  final String imageUrl;
  final String url;

  /// Constructor for the `EventTile` class.
  ///
  /// The [title] parameter is the title of the event.
  /// The [imageUrl] parameter is the URL of the image associated with the event.
  EventTile(this.title, this.imageUrl, this.url, this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          html.window.open(url, "");
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display the image associated with the event
            Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        imageUrl,
                      )),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: null,
            ),
            Gap(14),
            // Display the title of the event
            SizedBox(
              width: 200,
              height: 190,
              child: RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text: label,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                     TextSpan(
                      text: "\nClick me to explore the location ",
                      style: TextStyle(color: Color.fromARGB(255, 0, 90, 163), fontSize: 18),
                    ),
                  ],
                ),
              ),
              // Text(
              //   title,
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),

              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
