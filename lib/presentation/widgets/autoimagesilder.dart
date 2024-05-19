import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invitation/presentation/core.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => CarouselSlider.builder(
    itemCount:list.length,
    itemBuilder: (BuildContext context, int index,int pageindex) {
      return Container(
        height: 300,
         width:  double.infinity,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image:  AssetImage(list[index]))
        ),
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

List <String> list = [
 
  Assetsimages.lanscape1,
  Assetsimages.land1,
   Assetsimages.land2,
    Assetsimages.land3,
     Assetsimages.land4,
     Assetsimages.land5,

 
  


];
