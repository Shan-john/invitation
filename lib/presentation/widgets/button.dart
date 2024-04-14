import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;

  final double height;
  final double width;
  final Function() onTap;

  PrimaryButton(this.label, this.height, this.onTap, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
      ),
    );
  }
}
