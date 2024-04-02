import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreenController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> pwdController = TextEditingController().obs;
  RxBool obscurity = false.obs;

  final messageScreenKey = GlobalKey<FormState>();

  void suffixIconOfTextField() {
    obscurity.value = !obscurity.value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    log('Init method');
  }

  @override
  void onReady() {
    super.onReady();
    log('Ready method');
  }

  @override
  void onClose() {
    super.onClose();
    log('Close method');
  }
}
