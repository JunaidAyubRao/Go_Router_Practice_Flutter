import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static const String pageName = '/SecondScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white70,
          child: const Text('Second'),
        ),
      ),
    );
  }
}
