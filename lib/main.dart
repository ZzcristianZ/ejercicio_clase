import 'package:ejercicio_clase/config/router/router.dart';
import 'package:ejercicio_clase/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 3).getThemeData(),
    );
  }
}
