import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice_flutter/Pages.dart/ErrorScreen.dart';
import 'package:go_router_practice_flutter/Pages.dart/FirstScreen.dart';
import 'package:go_router_practice_flutter/Pages.dart/FourthScreen.dart';
import 'package:go_router_practice_flutter/Pages.dart/SecondScreen.dart';
import 'package:go_router_practice_flutter/Pages.dart/ThirdScreen.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: FirstScreen.pageName,
          pageBuilder: (context, state) =>
              const MaterialPage(child: FirstScreen()),
        ),
        GoRoute(
          path: '/SecondScreens',
          // name: SecondScreen.pageName,
          pageBuilder: (context, state) =>
              const MaterialPage(child: SecondScreen()),
        ),
        GoRoute(
          path: '/ThirdScreens',
          name: ThirdScreen.pageName,
          pageBuilder: (context, state) =>
              const MaterialPage(child: ThirdScreen()),
        ),
        GoRoute(
          path: '/FourthScreens',
          name: FourthScreen.pageName,
          pageBuilder: (context, state) =>
              const MaterialPage(child: FourthScreen()),
        ),
      ],
      errorPageBuilder: (context, state) =>
          const MaterialPage(child: ErrorScreen()),
      redirect: (context, state) {
        if (!isAuth && state.location.startsWith('/${FirstScreen.pageName}')) {
          return context.namedLocation(SecondScreen.pageName);
        } else {
          return null;
        }
      },
    );

    return router;
  }
}
