import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controllers/message_screen_controller.dart';
import 'package:mini_project/models/text.dart';
import 'package:mini_project/models/textformfield.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return GetBuilder(
      init: Get.put(
        MessageScreenController(),
      ),
      builder: (controller) => Scaffold(
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
                  'WELCOME',
                  fontWeight: FontWeight.bold,
                  fontSize: h1 / 35,
                ),
                SizedBox(height: h1 / 40),
                textformfield(
                  controller.emailController.value,
                  "Enter your Email-id",
                  'Email Address',
                  prefixicn: const Icon(
                    Icons.email_outlined,
                  ),
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
                ),
                // GetBuilder(
                //   init: MessageScreenController(),
                //   builder: (controller) => textformfield(
                //     pwdController,
                //     "Enter your Password",
                //     'Password',
                //     obscurity: controller.obscurity.value,
                //     prefixicn: const Icon(Icons.lock_outline),
                //     suffixicn: IconButton(
                //       onPressed: () => controller.suffixIconOfTextField(),
                //       icon: Icon(
                //         controller.obscurity.value
                //             ? Icons.visibility_off
                //             : Icons.visibility,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: h1 / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text(
                      'Forgot Password',
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: h1 / 50),
                Card(
                  color: Colors.green,
                  elevation: w1 / 20,
                  child: Container(
                    height: h1 / 17,
                    width: w1 / 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w1 / 30),
                      // color: Colors.green,
                    ),
                    child: Center(
                      child: text(
                        'LOGIN',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h1 / 50),
                text(
                  'I have not an account',
                  decoration: TextDecoration.underline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
