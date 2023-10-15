import 'package:flutter/material.dart';

import '../../ui/screen/no_route_screen.dart';
import '../../ui/screen/rick_and_morty_screen.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.rickAndMortyScreen:
        return MaterialPageRoute(builder: (_) => const RickAndMortyScreen());

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteScreen());
    }
  }
}
