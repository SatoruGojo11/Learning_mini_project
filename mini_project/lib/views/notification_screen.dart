import 'package:flutter/material.dart';
import 'package:mini_project/models/text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text('Notification Screen', fontSize: 50),
      ),
    );
  }
}
