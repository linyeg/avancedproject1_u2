
import 'package:flutter/material.dart';
import 'package:avanced/models/models.dart';
import 'package:avanced/screens/screens.dart';


class AppRoutes{
  static const initialRoute = "home";
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'card', icon: Icons.abc, name: 'Card screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.alarm_add_outlined, name: 'alert screen', screen: const AlertScreen()),
    MenuOption(route: 'animation', icon: Icons.animation, name: 'animation screen', screen: const AnimationScreen()),
    MenuOption(route: 'listview', icon: Icons.list_rounded, name: 'listview screen 1', screen: const ListViewScreen2Screen()),
    MenuOption(route: 'listview', icon: Icons.list_alt, name: 'listview screen 2', screen: const ListViewScreen()),
    MenuOption(route: 'route1', icon: Icons.route, name: 'route screen 1', screen: const Route1Screen()),
    MenuOption(route: 'route12', icon: Icons.route_sharp, name: 'route screen 2', screen: const Route2Screen())


  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({
      'home': (BuildContext context) => HomeScreen()});
    for(final option in menuOptions){
      appRoutes.addAll({
        option.route:(BuildContext context) => option.screen
      });
    }

    return appRoutes;

  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const AlertScreen()
    );
    
  }
}