import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';
import 'package:mini_project/controllers/message_screen_controller.dart';
import 'package:mini_project/controllers/notification_screen_controller.dart';
import 'package:mini_project/controllers/setting_screen_controller.dart';

class HomeScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}

class MessageScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessageScreenController>(() => MessageScreenController());
  }
}

class NotificationScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationScreenController>(
        () => NotificationScreenController());
  }
}

class SettingScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingScreenController >(() => SettingScreenController());
  }
}
