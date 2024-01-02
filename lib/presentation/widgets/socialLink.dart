import 'package:flutter/material.dart';
import 'package:invitation/presentation/webveiw/webveiw.dart';


class SocialLink extends StatelessWidget {
  final String label;
  final String url;

  SocialLink(this.label, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextButton(
        onPressed: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return WebViewhelper(url);
        })),
        child: Text(label),
      ),
    );
  }
}
