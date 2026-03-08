
import 'package:ejercicio_clase/config/router/router_config.dart';
import 'package:ejercicio_clase/screen/home/home_screen.dart';
import 'package:ejercicio_clase/screen/shared/layout.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",

  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        String data=state.topRoute?.name ?? "Admin";
        return Layout(title: data, child: child);
      },

      routes: [
        ...routerConfig.map((e) {
          return GoRoute(path: e.patch, name: e.name, builder: e.widget);
        }),
      ],
    ),
  ],
  errorBuilder: (context, state) => HomeScreen(),
);
