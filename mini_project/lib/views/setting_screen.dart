import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/setting_screen_controller.dart';
import 'package:mini_project/models/text.dart';

class SettingScreen extends GetView<SettingScreenController> {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: text(
          'Setting',
          color: Colors.white,
          fontSize: w1 / 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: h1 / 50),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: const AssetImage(
                'assets/images/person.jpg',
              ),
              maxRadius: w1 / 15,
            ),
            title: text(
              'Jaydip',
              textAlign: TextAlign.start,
              fontSize: h1 / 40,
            ),
            subtitle: text(
              'Flutter Developer',
              textAlign: TextAlign.start,
              fontSize: h1 / 60,
            ),
          ),
          SizedBox(height: h1 / 50),
          Divider(
            thickness: w1 / 180,
            color: Colors.black,
          ),
          SizedBox(height: h1 / 50),
          ListTile(
            leading: const Icon(Icons.lightbulb),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => GetBuilder(
                  init: SettingScreenController(),
                  builder: (controller) => SimpleDialog(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: controller.light,
                            groupValue: controller.theme.value,
                            activeColor: Colors.purple,
                            onChanged: (value) {
                              controller.changeToLight(value);
                              Get.back();
                            },
                          ),
                          text('Light'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: controller.dark,
                            groupValue: controller.theme.value,
                            activeColor: Colors.purple,
                            onChanged: (value) {
                              controller.changeToDark(value);
                              Get.back();
                            },
                          ),
                          text('Dark'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            title: text(
              'Themes',
              fontSize: w1 / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h1 / 50),
          ListTile(
            leading: const Icon(Icons.home),
            title: text(
              'Dashboard',
              fontSize: w1 / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h1 / 50),
          ListTile(
            leading: const Icon(Icons.person),
            title: text(
              'Login',
              fontSize: w1 / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h1 / 50),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: text(
              'Register',
              fontSize: w1 / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h1 / 50),
          ListTile(
            leading: const Icon(Icons.info),
            title: text(
              'About',
              fontSize: w1 / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
