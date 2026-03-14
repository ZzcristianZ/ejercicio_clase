import 'package:ejercicio_clase/config/router/router_config.dart';
import 'package:ejercicio_clase/model/product_model.dart';
import 'package:ejercicio_clase/screen/details/detalis_screen.dart';
import 'package:ejercicio_clase/producto/product_detail_screen.dart';
import 'package:ejercicio_clase/screen/home/home_screen.dart';
import 'package:ejercicio_clase/screen/shared/layout.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",

  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        String data = state.topRoute?.name ?? "Admin";
        return Layout(title: data, child: child);
      },
      routes: [
        ...routerConfig.map((e) {
          return GoRoute(path: e.patch, name: e.name, builder: e.widget);
        }),
        GoRoute(
          path: "/characters/detail",
          name: "Detalles",
          builder: (context, state) {
            final character = state.extra as ProductModel;
            return DetailScreen(character: character);
          },
        ),
      ],
    ),
    GoRoute(
      name: 'product_detail',
      path: '/product/:id',
      builder: (context, state) {
        int id = int.parse( state.pathParameters['id']! );
        return ProductDetailScreen(id: id);
      },
    )
  ],

  errorBuilder: (context, state) => HomeScreen(),
);
