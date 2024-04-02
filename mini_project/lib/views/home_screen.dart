// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';
import 'package:mini_project/models/home_page_categories.dart';
import 'package:mini_project/models/single_news.dart';
import 'package:mini_project/models/text.dart';
import 'package:mini_project/views/shimmer_page.dart';

class HomePage extends GetView<HomeScreenController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: HomeScreenController(),
      builder: (controller) => controller.isData.value
          ? Scaffold(
              body: Padding(
                padding: EdgeInsets.all(w1 / 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: h1 / 25,
                      ),
                      // User name and User Photo Row
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w1 / 30),
                        child: Row(
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
                              maxRadius: w1 / 20,
                            ),
                          ],
                        ),
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
                              height: h1 / 40,
                              width: w1 / 30,
                              margin:
                                  EdgeInsets.symmetric(horizontal: w1 / 100),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    controller.currentIndicator.value == index
                                        ? Colors.green
                                        : Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: h1 / 55,
                      ),
                      // shortcuts Buttons
                      Row(
                        children: [
                          categoriesWidget(0, context),
                          const Spacer(),
                          categoriesWidget(1, context),
                          const Spacer(),
                          categoriesWidget(2, context),
                          const Spacer(),
                          categoriesWidget(3, context),
                        ],
                      ),
                      SizedBox(height: h1 / 30),
                      // Browse Section
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w1 / 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text(
                              'Browser',
                              fontSize: w1 / 18,
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
                      SizedBox(height: h1 / 70),
                      // Newses
                      singleNews(context, 0),
                      SizedBox(height: h1 / 50),
                      singleNews(context, 1),
                      SizedBox(height: h1 / 50),
                      singleNews(context, 2),
                      SizedBox(height: h1 / 50),
                      singleNews(context, 3),
                    ],
                  ),
                ),
              ),
            )
          : const ShimmerPage(),
    );
  }
}
