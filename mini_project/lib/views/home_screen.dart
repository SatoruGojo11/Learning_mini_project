// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';
import 'package:mini_project/models/home_page_categories.dart';
import 'package:mini_project/models/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    HomeScreenController controller = Get.put(HomeScreenController());

    List imgNews = [
      './assets/images/forest.png',
      './assets/images/forest.png',
      './assets/images/forest.png',
      './assets/images/forest.png',
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(w1 / 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: w1 / 10,
              ),
              // User name and User Photo Row
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        'Welcome!',
                        fontSize: w1 / 22,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      text(
                        'Jaydip',
                        color: Colors.green,
                        fontSize: w1 / 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/images/person.jpg'),
                    maxRadius: w1 / 18,
                  ),
                ],
              ),
              // Carousel Slider
              CarouselSlider(
                items: controller.items,
                options: CarouselOptions(
                  height: h1 / 4,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, reason) =>
                      controller.updateIndicatorIndex(index),
                ),
              ),
              // Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.indicator.map((e) {
                  int index = controller.indicator.indexOf(e);
                  return Obx(
                    () => Container(
                      height: w1 / 30,
                      width: w1 / 30,
                      margin: EdgeInsets.symmetric(horizontal: w1 / 100),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndicator.value == index
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: w1 / 40,
              ),
              // shortcuts Buttons
              Row(
                children: [
                  categoriesWidget(
                    index: 0,
                    heightOfCTR: w1 / 5,
                    widthOfCTR: w1 / 5,
                    heightOfSZ: w1 / 9,
                    widthOfSZ: w1 / 9,
                    heightOfTXT: w1 / 10,
                    widthOfTXT: w1 / 8,
                  ),
                  const Spacer(),
                  categoriesWidget(
                    index: 1,
                    heightOfCTR: w1 / 5,
                    widthOfCTR: w1 / 5,
                    heightOfSZ: w1 / 9,
                    widthOfSZ: w1 / 9,
                    heightOfTXT: w1 / 10,
                    widthOfTXT: w1 / 8,
                  ),
                  const Spacer(),
                  categoriesWidget(
                    index: 2,
                    heightOfCTR: w1 / 5,
                    widthOfCTR: w1 / 5,
                    heightOfSZ: w1 / 9,
                    widthOfSZ: w1 / 7,
                    heightOfTXT: w1 / 10,
                    widthOfTXT: w1 / 5,
                  ),
                  const Spacer(),
                  categoriesWidget(
                    index: 3,
                    heightOfCTR: w1 / 5,
                    widthOfCTR: w1 / 5,
                    heightOfSZ: w1 / 9,
                    widthOfSZ: w1 / 9,
                    heightOfTXT: w1 / 10,
                    widthOfTXT: w1 / 8,
                  ),
                ],
              ),
              SizedBox(height: w1 / 12),
              // Browse Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w1 / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(
                      'Browser',
                      fontSize: w1 / 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                    text(
                      'Lihat semua',
                      fontSize: w1 / 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              // Newses
              Container(
                height: h1 / 4,
                width: w1 / 1.1,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    filterQuality: FilterQuality.high,
                    image: AssetImage(
                      'assets/images/forest.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w1 / 25,
                          vertical: w1 / 20,
                        ),
                        child: text(
                          '#LindungiHutan',
                          color: Colors.white,
                          fontSize: w1 / 25,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w1 / 25,
                          vertical: w1 / 20,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/categories/earth.png'),
                          maxRadius: w1 / 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
