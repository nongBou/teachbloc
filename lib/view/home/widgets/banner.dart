import 'package:carousel_slider/carousel_slider.dart';
import 'package:day4/data/data_static.dart';
import 'package:flutter/material.dart';

class BannerCustom extends StatefulWidget {
  const BannerCustom({super.key});

  @override
  State<BannerCustom> createState() => _BannerCustomState();
}

class _BannerCustomState extends State<BannerCustom> {
  List banner = [
    "https://cdn.thewirecutter.com/wp-content/media/2024/05/runningshoesforyou-2048px-2251.jpg?auto=webp&quality=75&width=1024",
    imageURL,
    imageURL,
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                currentindex = index;
                setState(() {});
              },
            ),
            items: List.generate(banner.length, (index) {
              return Image.network(banner[index]);
            })),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(banner.length, (index) {
              return Container(
                margin: const EdgeInsets.all(10),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: currentindex == index ? Colors.blue : Colors.red,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
