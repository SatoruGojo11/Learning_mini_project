import 'package:flutter/material.dart';
import 'package:mini_project/models/text.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text('Message Screen', fontSize: 50),
      ),
    );
  }
}
