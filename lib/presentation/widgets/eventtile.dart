
import 'package:flutter/material.dart';
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

  /// The URL of the image associated with the event.
  final String imageUrl;

  /// Constructor for the `EventTile` class.
  ///
  /// The [title] parameter is the title of the event.
  /// The [imageUrl] parameter is the URL of the image associated with the event.
  EventTile(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Display the image associated with the event
        Image.network(
          imageUrl,
          height: 180,
          width: 160,
        ),
        
        // Display the title of the event
        SizedBox(
          width: 290,
          height: 200,
          child: Text(
            title,
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
        ),
      ],
    );
  }
}
