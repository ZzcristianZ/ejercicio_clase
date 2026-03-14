import 'package:ejercicio_clase/widget/layout/drawer_coustom.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final String title;

  const Layout({
    super.key,
    required this.child,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: DrawerCoustom(),
      body: SafeArea(child: child),
    );
  }
}