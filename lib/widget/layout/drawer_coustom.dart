import 'package:ejercicio_clase/config/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerCoustom extends StatelessWidget {
  const DrawerCoustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...routerConfig.map((route) {
            return ListTile(
              title: Text(route.title),
              subtitle: Text(route.description),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),

              onTap: () {
                Navigator.pop(context); 

                if (Navigator.canPop(context)) {
                  Navigator.pop(context); 
                }

                context.go(route.patch);
              },
            );
          }),
        ],
      ),
    );
  }
}