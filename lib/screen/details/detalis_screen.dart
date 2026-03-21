import 'package:ejercicio_clase/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel character;

  const DetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Volver"),
              ),
            ),
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(character.image),
            ),
            const SizedBox(height: 20),
            Text(
              character.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _infoRow("ID", character.id.toString()),
                    const Divider(),
                    _infoRow("Status", character.status),
                    const Divider(),
                    _infoRow("Species", character.species),
                    const Divider(),
                    _infoRow("Gender", character.gender),
                    const Divider(),
                    _infoRow("Origin", character.origin),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
