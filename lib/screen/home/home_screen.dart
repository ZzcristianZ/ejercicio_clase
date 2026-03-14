import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Aplicación de Personajes\nRick and Morty",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 20),
            const Text(
              "Estudiantes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Cristian Danilo Areniz Coronel",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text("Código: 192337", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            const SizedBox(height: 10),
            const Text("Andrés Felipe Guevara Contreras", style: TextStyle(fontSize: 18)),
            const Text("Código: 192413", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 20),
            const Text(
              "Ingeniería de Sistemas",
              style: TextStyle(fontSize: 16),
            ),
            const Text("2026", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
