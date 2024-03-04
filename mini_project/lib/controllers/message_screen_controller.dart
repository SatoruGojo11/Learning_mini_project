import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreenController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> pwdController = TextEditingController().obs;

  RxBool obscurity = false.obs;

  suffixIconOfTextField() {
    obscurity.value = !obscurity.value;
  }
}
