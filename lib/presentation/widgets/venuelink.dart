import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:invitation/presentation/webveiw/webveiw.dart';
import 'package:url_launcher/url_launcher.dart';
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
          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          // return WebViewhelper(url);

          // }));
          html.window.open(url, "");
          // launchweb(uri: url);
        },
        child: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

void launchweb({required String uri}) async {
  final url = Uri.parse(uri);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    showMessage(message: "unable to locate ");
  }
}

Future<bool?> showMessage({required String message}) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color.fromARGB(255, 41, 40, 40),
      textColor: Colors.white,
      fontSize: 16.0);
}
