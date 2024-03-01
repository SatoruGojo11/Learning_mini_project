import 'package:flutter/material.dart';
import 'package:mini_project/models/text.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text('Setting Screen', fontSize: 50),
      ),
    );
  }
}
