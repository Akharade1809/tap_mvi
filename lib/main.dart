import 'package:flutter/material.dart';
import 'package:tap_mvi/core/di/injection.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

