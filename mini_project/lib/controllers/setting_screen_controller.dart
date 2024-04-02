import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreenController extends GetxController {
  RxString theme = 'light'.obs;

  RxBool isLight = true.obs;

  String light = 'light';
  String dark = 'dark';

  changeToLight(value) {
    theme.value = value;
    isLight.value = true;
    Get.changeTheme(ThemeData.light());
    update();
  }

  changeToDark(value) {
    theme.value = value;
    isLight.value = false;
    Get.changeTheme(ThemeData.dark());
    update();
  }
}
