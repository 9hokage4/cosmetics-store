import 'package:cosmetics_store/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CosmeticsStore());
}

class CosmeticsStore extends StatelessWidget {
  const CosmeticsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmetic Shop',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
      ),
      home: HomeScreen(),
    );
  }
}
