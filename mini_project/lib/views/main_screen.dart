import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';

class MainScreen extends GetView<HomeScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w1 = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => controller.pages[controller.currentIndexOfBNB.value],
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
        ),
      ),
    );
  }
}
