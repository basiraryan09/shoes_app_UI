import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  List imageList = [
    {"id": 1, "image_path": 'assets/HeroPic.png'},
    {"id": 2, "image_path": 'assets/HeroPic.png'},
    {"id": 3, "image_path": 'assets/HeroPic.png'}
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 260,
          width: 390,
          decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Stack(children: [
                InkWell(
                  onTap: () {},
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.fitHeight,
                        width: double.infinity,
                      ),
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 1.7,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? AppColors.mainColor
                                  : Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ]),

            ],

          ),
        ),
      ),
    );
  }
}

