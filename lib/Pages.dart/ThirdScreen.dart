import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  static const String pageName = '/ThirdScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white70,
          child: const Text('Third'),
        ),
      ),
    );
  }
}
