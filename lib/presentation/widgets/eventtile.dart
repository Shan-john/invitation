
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
          height: 150,
          width: 150,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

