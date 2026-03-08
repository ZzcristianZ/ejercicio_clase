import 'package:ejercicio_clase/config/router/router_model.dart';
import 'package:ejercicio_clase/screen/home/home_screen.dart';
import 'package:ejercicio_clase/screen/product/product_screen.dart';
import 'package:ejercicio_clase/screen/setting/setting_screen.dart';
import 'package:ejercicio_clase/screen/users/user_sreen.dart';


List<RouterModel> routerConfig = [
  RouterModel(name: "Home", title: "Home", description: "Esto es un home", patch: "/", widget: (contex, state)=>const HomeScreen()),
  RouterModel(name: "Settings", title: "Settings", description: "Esto es un setting", patch: "/settings", widget: (context,state)=>const SettingScreen()),
  RouterModel(name: "Users", title: "Users", description: "Esto es un user", patch: "/user", widget: (context,state)=>const UserSreen()),
  RouterModel(name: "Personajes", title: "Personajes", description: "aquí van personajes", patch: "/characters", widget: (context,state)=>const ProductScreen()),
  

];