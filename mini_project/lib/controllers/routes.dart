import 'package:get/get.dart';
import 'package:mini_project/views/main_screen.dart';
import 'package:mini_project/bindings/bindings.dart';
import 'package:mini_project/views/home_screen.dart';
import 'package:mini_project/views/message_screen.dart';
import 'package:mini_project/views/notification_screen.dart';
import 'package:mini_project/views/setting_screen.dart';

List<GetPage> routes = <GetPage>[
  GetPage(
    name: '/mainPage',
    page: () => const MainScreen(),
    bindings: [
      HomeScreenBindings(),
      MessageScreenBindings(),
      NotificationScreenBindings(),
      SettingScreenBindings(),
    ],
  ),
  GetPage(
    name: '/homePage',
    page: () => const HomePage(),
    bindings: [
      HomeScreenBindings(),
    ],
  ),
  GetPage(
    name: '/messagePage',
    page: () => const MessageScreen(),
    bindings: [
      MessageScreenBindings(),
    ],
  ),
  GetPage(
    name: '/notificationPage',
    page: () => const NotificationScreen(),
    bindings: [
      NotificationScreenBindings(),
    ],
  ),
  GetPage(
    name: '/settingPage',
    page: () => const SettingScreen(),
    bindings: [
      SettingScreenBindings(),
    ],
  ),
];
