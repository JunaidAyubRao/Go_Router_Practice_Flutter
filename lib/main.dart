import 'package:flutter/material.dart';
import 'package:go_router_practice_flutter/Pages.dart/FirstScreen.dart';

import 'Router.dart/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser:
          MyAppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: MyAppRouter.returnRouter(false).routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
