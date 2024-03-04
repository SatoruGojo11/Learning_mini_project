import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreenController extends GetxController {
  RxString theme = ''.obs;

  String light = 'light';
  String dark = 'dark';

  changeToLight(value) {
    theme.value = value;
    Get.changeTheme(ThemeData.light());
    update();
  }

  changeToDark(value) {
    theme.value = value;
    Get.changeTheme(ThemeData.dark());
    update();
  }
}
