import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_mvi/app/navigation/nav_item.dart';
import 'package:tap_mvi/features/company_detail/presentation/views/company_detail_screen.dart';
import 'package:tap_mvi/features/home/presentation/views/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavItem.home :
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case NavItem.companyDetail :
        final isin = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => CompanyDetailScreen(isin: isin));

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page Not Found')),
          ),
        );
    }
  }
}