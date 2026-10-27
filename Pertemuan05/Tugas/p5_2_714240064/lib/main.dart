import 'package:flutter/material.dart';
import 'package:p5_2_714240064/home_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 2, 49, 37),
        colorScheme: ColorScheme.dark(
          primary: const Color.fromARGB(255, 8, 9, 7),
          secondary: const Color.fromARGB(255, 0, 0, 0),
          surface: const Color.fromARGB(255, 106, 230, 211),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 137, 255, 202),
          foregroundColor: Color.fromARGB(255, 9, 11, 9),
          elevation: 4,
        ),
        fontFamily: 'MetalMania',
      ),
      home: const HomeScreen(),
    );
  }
}
