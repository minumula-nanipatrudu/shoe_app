import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/cart_provider.dart';
import 'package:shoe_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CartProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 174, 0),
            primary: const Color.fromARGB(255, 255, 174, 0),
          ),
          fontFamily: 'Lato',
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
