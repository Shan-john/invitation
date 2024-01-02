
import 'package:flutter/material.dart';
import 'package:invitation/presentation/webveiw/webveiw.dart';
import 'package:invitation/presentation/widgets/socialLink.dart';
import 'package:invitation/presentation/widgets/venuelink.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          Text(
            "Designed and Developed by",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          TextButton(
            onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return WebViewhelper("https://github.com/Shan-john");
        })),
             
            child: Text(
              "Shan John",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLink("Instagram", "https://www.instagram.com/s_h_a_n_j_o_h_n"),
              SocialLink("LinkedIn", "https://www.linkedin.com/in/shan-john"),
              SocialLink("GitHub", "https://github.com/Shan-john"),
            ],
          ),
        ],
      ),
    );
  }
}