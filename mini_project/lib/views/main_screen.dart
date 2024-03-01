import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';
import 'package:mini_project/views/home_screen.dart';
import 'package:mini_project/views/message_screen.dart';
import 'package:mini_project/views/notification_screen.dart';
import 'package:mini_project/views/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double w1 = MediaQuery.of(context).size.width;
    HomeScreenController controller = HomeScreenController();
    List<Widget> pages = const [
      HomePage(),
      MessageScreen(),
      NotificationScreen(),
      SettingScreen(),
    ];

    return SafeArea(
      child: Scaffold(
          body: Obx(
            () => IndexedStack(
              index: controller.currentIndexOfBNB.value,
              children: pages,
            ),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              iconSize: w1 / 12,
              selectedFontSize: w1 / 30,
              selectedItemColor: Colors.green,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedItemColor: Colors.grey,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                  ),
                  label: 'Message',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'Settings',
                ),
              ],
              onTap: controller.updateBNBIndex,
              currentIndex: controller.currentIndexOfBNB.value,
            ),
          )),
    );
  }
}
