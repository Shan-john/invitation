import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => CarouselSlider.builder(
    itemCount:list.length,
    itemBuilder: (BuildContext context, int index,int pageindex) {
      return Container(
        height: 300,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(list[index],))
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

List list = [
  "https://cdn.pixabay.com/photo/2024/03/26/21/10/ai-generated-8657781_640.jpg",
  "https://cdn.pixabay.com/photo/2024/03/05/10/38/boat-8614314_1280.jpg",
  


];
