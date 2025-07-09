import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_mvi/app/router.dart';
import 'package:tap_mvi/app/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVI App',
      theme: AppTheme.light,   // Your custom theme
      darkTheme: AppTheme.dark,
      initialRoute: '/home',
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}