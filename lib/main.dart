import 'package:doctor/pages/Welcomecreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//helloooo

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xFF7165D6),
          primarySwatch: const MaterialColor(
            0xFF7165D6,
            <int, Color>{
              50: Color(0xFFE9E6F7),
              100: Color(0xFFC8C3EF),
              200: Color(0xFFA29AE5),
              300: Color(0xFF7C71DB),
              400: Color(0xFF5F52D3),
              500: Color(0xFF7165D6), // Primary value
              600: Color(0xFF5B4AC8),
              700: Color(0xFF4736B5),
              800: Color(0xFF3523A3),
              900: Color(0xFF230E89),
            },
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: "Doctor_consulting",
        home: const Welcome_screen());
  }
}
