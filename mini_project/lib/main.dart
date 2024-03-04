import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mini_project/controllers/routes.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/mainPage',
      getPages: routes,
    ),
  );
}
