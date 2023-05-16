import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});
  static const String pageName = '/FourthScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white70,
          child: const Text('Fourth'),
        ),
      ),
    );
  }
}
