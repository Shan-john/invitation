
import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  EventTile(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          imageUrl,
          height: 180,
          width: 160,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

