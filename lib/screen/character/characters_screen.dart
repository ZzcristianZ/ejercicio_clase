import 'package:ejercicio_clase/model/product_model.dart';
import 'package:ejercicio_clase/service/character_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    getProductos();
  }

  void getProductos() async {
    final List<ProductModel> temporal = await CharacterService().getProduct();
    setState(() {
      products = temporal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final character = products[index];

        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(character.image)),
          title: Text(character.name),
          subtitle: Row(
            children: [
              Text(character.species),
              const SizedBox(width: 5),
              Text(character.status),
            ],
          ),
          onTap: () {
            context.push("/characters/detail", extra: products[index]);
          },
        );
      },
    );
  }
}
