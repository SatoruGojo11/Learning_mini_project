import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mini_project/views/home_screen.dart';
import 'package:mini_project/views/main_screen.dart';
import 'package:mini_project/views/message_screen.dart';
import 'package:mini_project/views/notification_screen.dart';
import 'package:mini_project/views/setting_screen.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const MainScreen(),
        ),
        GetPage(
          name: '/homePage',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/messagePage',
          page: () => const MessageScreen(),
        ),
        GetPage(
          name: '/notificationPage',
          page: () => const NotificationScreen(),
        ),
        GetPage(
          name: '/settingPage',
          page: () => const SettingScreen(),
        ),
      ],
    ),
  );
}
