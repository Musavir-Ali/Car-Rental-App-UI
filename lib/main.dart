import 'package:flutter/material.dart';
import 'package:rental_app/Details.dart';
import 'package:rental_app/Home.dart';
import 'package:rental_app/Logoscreen.dart';
import 'package:rental_app/Pickup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pickup(),
    );
  }
}
