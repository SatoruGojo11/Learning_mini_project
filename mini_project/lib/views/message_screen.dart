import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mini_project/controllers/message_screen_controller.dart';
import 'package:mini_project/models/text.dart';
import 'package:mini_project/models/textformfield.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

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
                'WELCOME',
                fontWeight: FontWeight.bold,
                fontSize: h1 / 35,
              ),
              SizedBox(height: h1 / 40),
              GetBuilder(
                init: MessageScreenController(),
                builder: (controller) => Form(
                  key: controller.messageScreenKey,
                  child: Column(
                    children: [
                      textformfield(
                        controller.emailController.value,
                        "Enter your Email-id",
                        'Email Address',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please, Enter your Email-Id...';
                          }
                          return null;
                        },
                        prefixicn: const Icon(
                          Icons.email_outlined,
                        ),
                      ),
                      SizedBox(height: h1 / 40),
                      GetBuilder(
                        init: MessageScreenController(),
                        builder: (controller) => textformfield(
                          controller.pwdController.value,
                          "Enter your Password",
                          'Password',
                          obscurity: controller.obscurity.value,
                          prefixicn: const Icon(Icons.lock_outline),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please, Enter your Password...';
                            }
                            return null;
                          },
                          suffixicn: IconButton(
                            onPressed: () => controller.suffixIconOfTextField(),
                            icon: Icon(
                              controller.obscurity.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: h1 / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => Fluttertoast.showToast(
                              msg: 'Forgot Password Tapped...',
                              backgroundColor: Colors.blue,
                            ),
                            child: text(
                              'Forgot Password',
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h1 / 50),
                      GestureDetector(
                        onTap: () {
                          if (controller.messageScreenKey.currentState!
                              .validate()) {
                            controller.emailController.value.clear();
                            controller.pwdController.value.clear();
                            Fluttertoast.showToast(
                              msg: 'Login is in Process..',
                              backgroundColor: Colors.green,
                            );
                          } else {
                            if (controller.emailController.value.text.isEmpty &&
                                controller.pwdController.value.text.isEmpty) {
                              Fluttertoast.showToast(
                                msg: 'Both Fields are Empty...',
                                backgroundColor: Colors.red,
                              );
                            } else if (controller
                                .emailController.value.text.isEmpty) {
                              Fluttertoast.showToast(
                                msg: 'Please, Enter your Email-Id...',
                                backgroundColor: Colors.red,
                              );
                            } else if (controller
                                .pwdController.value.text.isEmpty) {
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
                                'LOGIN',
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
                          msg: 'Please,Do Sign Up First...',
                          backgroundColor: Colors.blue,
                        ),
                        child: text(
                          'I have not an account',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
