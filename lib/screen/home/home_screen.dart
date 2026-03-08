import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Hola home"),
          FilledButton(onPressed: () {}, child: Text("Hello button")),
        ],
      ),
    );
  }
}
