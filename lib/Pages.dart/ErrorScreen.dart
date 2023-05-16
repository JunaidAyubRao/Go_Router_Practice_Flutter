import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  static const String pageName = '/ErrorScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white70,
          child: const Text('Error'),
        ),
      ),
    );
  }
}
