import 'package:cinema_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: const Color.fromRGBO(32, 36, 43, 1),
          primary: const Color.fromRGBO(69, 78, 92, 1),
          onBackground: const Color.fromRGBO(255, 255, 255, 1),
          onPrimary: const Color.fromRGBO(135, 135, 135, 1),
          tertiary: const Color.fromRGBO(154, 144, 247, 1),
        ),
        textTheme: GoogleFonts.varelaTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
