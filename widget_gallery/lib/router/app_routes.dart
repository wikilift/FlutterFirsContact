import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home_max_outlined,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'ListView 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'ListView2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.error_outline,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_rounded,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_arrow_outlined,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.input_outlined,
        name: 'Inputs Screen',
        screen: const InputScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slideshow_outlined,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        icon: Icons.library_add_outlined,
        name: 'ListViewBuilder Screen',
        screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    routes.addAll({"home": (BuildContext context) => const HomeScreen()});
    for (final item in menuOptions) {
      routes.addAll({item.route: (context) => item.screen});
    }
    return routes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(
        builder: (context) => const AlertScreen(),
      );
}
