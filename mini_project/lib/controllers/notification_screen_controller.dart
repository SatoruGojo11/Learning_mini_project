import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreenController extends GetxController {
  RxBool obscurity = false.obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> pwdController = TextEditingController().obs;

  final notificationScreenKey = GlobalKey<FormState>();

  suffixIconOfTextField() {
    obscurity.value = !obscurity.value;
    update();
  }
}
