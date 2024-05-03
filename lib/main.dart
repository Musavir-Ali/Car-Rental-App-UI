import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_app/FirstScreen.dart';
import 'package:rental_app/Home.dart';
import 'package:rental_app/License.dart';
import 'package:rental_app/Logoscreen.dart';
import 'package:rental_app/SelectDate.dart';
import 'package:rental_app/Verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}
