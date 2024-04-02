import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mini_project/controllers/notification_screen_controller.dart';
import 'package:mini_project/models/text.dart';
import 'package:mini_project/models/textformfield.dart';

class NotificationScreen extends GetView<NotificationScreenController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(h1 / 50),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(height: h1 / 10),
              SizedBox(
                width: double.maxFinite,
                height: h1 / 10,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(height: h1 / 25),
              text(
                'CREATE NEW ACCOUNT',
                fontWeight: FontWeight.bold,
                fontSize: h1 / 35,
              ),
              SizedBox(height: h1 / 40),
              GetBuilder(
                init: NotificationScreenController(),
                builder: (controller) => Form(
                  key: controller.notificationScreenKey,
                  child: Column(
                    children: [
                      textformfield(
                        controller.nameController.value,
                        "Enter your Name",
                        'Name',
                        prefixicn: const Icon(
                          Icons.person_2_outlined,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please, Enter your Name...';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: h1 / 40),
                      textformfield(
                        controller.emailController.value,
                        "Enter your Email-id",
                        'Email Address',
                        prefixicn: const Icon(
                          Icons.email_outlined,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please, Enter your Email-Id...';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: h1 / 40),
                      textformfield(
                        controller.pwdController.value,
                        "Enter your Password",
                        'Password',
                        obscurity: controller.obscurity.value,
                        prefixicn: const Icon(Icons.lock_outline),
                        suffixicn: IconButton(
                          onPressed: () => controller.suffixIconOfTextField(),
                          icon: Icon(
                            controller.obscurity.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please, Enter your Password...';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: h1 / 50),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (controller.notificationScreenKey.currentState!
                      .validate()) {
                    controller.nameController.value.clear();
                    controller.emailController.value.clear();
                    controller.pwdController.value.clear();
                    Fluttertoast.showToast(
                      msg: 'Sign Up is in Process..',
                      backgroundColor: Colors.green,
                    );
                  } else {
                    if (controller.nameController.value.text.isEmpty &&
                        controller.emailController.value.text.isEmpty &&
                        controller.pwdController.value.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'All Fields are Empty...',
                        backgroundColor: Colors.red,
                      );
                    } else if (controller.nameController.value.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Please, Enter your Name...',
                        backgroundColor: Colors.red,
                      );
                    } else if (controller.emailController.value.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Please, Enter your Email-Id...',
                        backgroundColor: Colors.red,
                      );
                    } else if (controller.pwdController.value.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Please, Enter your Password...',
                        backgroundColor: Colors.red,
                      );
                    }
                  }
                },
                child: Card(
                  color: Colors.green,
                  elevation: w1 / 20,
                  child: Container(
                    height: h1 / 17,
                    width: w1 / 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w1 / 30),
                    ),
                    child: Center(
                      child: text(
                        'CREATE',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: h1 / 50),
              InkWell(
                onTap: () => Fluttertoast.showToast(
                  msg: 'Please,Do Login...',
                  backgroundColor: Colors.blue,
                ),
                child: text(
                  'I have already an account',
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
