import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invitation/presentation/core.dart';
import 'package:invitation/service/firebasehelper.dart';

class CarouselDemo extends StatefulWidget {
  @override
  State<CarouselDemo> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  CarouselController buttonCarouselController = CarouselController();
  List<String> imagedata = [];
  List<String> reversediamgeData = [];
  @override
  void initState() {
    fetchdata();

    super.initState();
  }

  void fetchdata() async {
    try {
      imagedata = await firebasehelper.instance.getAllImages();
      reversediamgeData = imagedata.reversed.toList();
    } catch (e) {
      reversediamgeData.addAll ([
         Assetsimages.lanscape1,
        Assetsimages.land1,
        Assetsimages.land2,
        Assetsimages.land3,
        Assetsimages.land4,
      ]
       
      );
    }
  }

  @override
  Widget build(BuildContext context) => CarouselSlider.builder(
        itemCount: reversediamgeData.length,
        itemBuilder: (BuildContext context, int index, int pageindex) {
          return Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(reversediamgeData[index]))),
          );
        },
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      );
}
