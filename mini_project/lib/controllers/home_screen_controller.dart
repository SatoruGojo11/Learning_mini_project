import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/views/home_screen.dart';
import 'package:mini_project/views/message_screen.dart';
import 'package:mini_project/views/notification_screen.dart';
import 'package:mini_project/views/setting_screen.dart';

class HomeScreenController extends GetxController {
  @override
  void onInit() {
    updateData();
    super.onInit();
  }

  final searchController = TextEditingController().obs;
  RxInt currentIndicator = 0.obs;
  RxInt currentIndexOfBNB = 0.obs;
  RxBool isData = false.obs;

  List<Image> items = [
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/banner.png'),
  ];

  List<Widget> pages = const <Widget>[
    HomePage(),
    MessageScreen(),
    NotificationScreen(),
    SettingScreen(),
  ];
  List indicator = [1, 2, 3, 4];

  updateIndicatorIndex(int index) {
    currentIndicator.value = index;
  }

  updateBNBIndex(int index) {
    currentIndexOfBNB.value = index;
  }

  updateData() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    isData.value = true;
    update();
  }
}
