import 'package:ejercicio_clase/config/router/router_model.dart';
import 'package:ejercicio_clase/screen/home/home_screen.dart';
import 'package:ejercicio_clase/screen/character/characters_screen.dart';

List<RouterModel> routerConfig = [

  RouterModel(
    name: "Home",
    title: "Home",
    description: "Home Screen de la APP",
    patch: "/",
    widget: (contex, state) => const HomeScreen(),
  ),
  RouterModel(
    name: "Personajes",
    title: "Personajes",
    description: "Personajes de Rick And Morty",
    patch: "/characters",
    widget: (context, state) => const CharactersScreen(),
  ),
];

