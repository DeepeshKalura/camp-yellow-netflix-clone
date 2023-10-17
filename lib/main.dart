import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: TextTheme(
          titleSmall: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
          bodyMedium: GoogleFonts.libreFranklin(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
          bodySmall: GoogleFonts.libreFranklin(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
          labelSmall: GoogleFonts.roboto(
            color: const Color(0xFFB3B3B3),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.libreFranklin(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFF262626),
            ),
            textStyle: MaterialStateProperty.all(
              Theme.of(context).textTheme.bodyMedium,
            ),
            iconColor: const MaterialStatePropertyAll(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            fixedSize: MaterialStateProperty.all(
              const Size(double.infinity, 50),
            ),
          ),
        ),
      ),
    );
  }
}
