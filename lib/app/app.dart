import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_mvi/app/navigation/nav_item.dart';
import 'package:tap_mvi/app/navigation/router.dart';
import 'package:tap_mvi/app/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVI App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      initialRoute: NavItem.home,
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}