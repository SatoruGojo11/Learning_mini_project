import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreenController extends GetxController {

  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> pwdController = TextEditingController().obs;
  RxBool obscurity = false.obs;

  suffixIconOfTextField() {
    obscurity.value = !obscurity.value;
  }
}
