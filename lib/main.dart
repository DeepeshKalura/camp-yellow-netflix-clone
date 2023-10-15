import 'package:flutter/material.dart';

import 'bloc/navigation/routes.dart';
import 'bloc/navigation/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camp Yellow Netflix',
      initialRoute: RoutesName.rickAndMortyScreen,
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
