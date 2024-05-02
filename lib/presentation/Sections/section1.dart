import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:invitation/presentation/core.dart';
import 'package:invitation/presentation/widgets/button.dart';
import 'package:invitation/routes.dart';
import 'package:video_player/video_player.dart';
import '../widgets/circlecontainer.dart';

/// **Section1 Class Documentation**
///
/// The `Section1` class represents a section in the Flutter application.
/// It is a StatelessWidget, meaning it does not have any mutable state.
///
/// ## Usage
///
/// ```dart
/// // Example usage of Section1 widget
/// Section1 section1 = Section1();
/// ```
class Section1 extends StatelessWidget {
  /// Constructor for the `Section1` class.
  ///
  /// The [key] parameter is used to provide a key for the widget.
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isvideobuttompressed = false;
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Display an image from a network URL
              Image.asset(
                Assetsimages.them,
                fit: BoxFit.fill,
              ),

              // Positioned row at the bottom of the image
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Display circle container with date
                    CircleContainer("Date", "27"),

                    // Display circle container with month
                    CircleContainer("Month", "June"),

                    // Display circle container with year
                    CircleContainer("Year", "2024"),
                  ],
                ),
              ),
            ],
          ),
          Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://www.cgr.gob.ve/assets/img/scroll-down.gif")),
                  Gap(10),
          PrimaryButton("Chekkan kannal video ->", 70, () {
            Routes.instance
                .push(widget: _ButterFlyAssetVideo(), context: context);
          }, 400),
        ],
      ),
    );
  }
}

class _ButterFlyAssetVideo extends StatefulWidget {
  @override
  _ButterFlyAssetVideoState createState() => _ButterFlyAssetVideoState();
}

class _ButterFlyAssetVideoState extends State<_ButterFlyAssetVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(AssetsVideo.chekankannalmp4);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.play();
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Routes.instance.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                VideoPlayer(_controller),
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ],
            ),
          ),
          VideoProgressIndicator(_controller, allowScrubbing: true),
        ],
      ),
    );
  }
}
