import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/home_screen_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends GetView<HomeScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => PersistentTabView(
            context,
            screens: controller.pages,
            controller: controller.tabController.value,
            navBarStyle: NavBarStyle.style13,
            hideNavigationBarWhenKeyboardShows: true,
            resizeToAvoidBottomInset: true,
            backgroundColor: controller.settingScreenController.isLight.value
                ? Colors.white
                : Colors.black,
            items: [
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.home),
                title: '',
                activeColorPrimary: Colors.green,
                inactiveColorPrimary: Colors.grey,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.message),
                title: '',
                activeColorPrimary: Colors.green,
                inactiveColorPrimary: Colors.grey,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.notifications),
                title: '',
                activeColorPrimary: Colors.green,
                inactiveColorPrimary: Colors.grey,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.settings),
                title: '',
                activeColorPrimary: Colors.green,
                inactiveColorPrimary: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
