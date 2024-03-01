import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final searchController = TextEditingController().obs;
  RxInt currentIndicator = 0.obs;
  RxInt currentIndexOfBNB = 0.obs;

  List<Image> items = [
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
  ];

  List indicator = [1, 2, 3, 4];

  updateIndicatorIndex(int index) {
    currentIndicator.value = index;
  }

  updateBNBIndex(int index) {
    currentIndexOfBNB.value = index;
  }
}
