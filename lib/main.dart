import 'package:flutter/material.dart';
import 'package:rental_app/Booking.dart';
import 'package:rental_app/Details.dart';
import 'package:rental_app/Home.dart';
import 'package:rental_app/License.dart';
import 'package:rental_app/Logoscreen.dart';
import 'package:rental_app/Pay.dart';
import 'package:get/get.dart';
import 'package:rental_app/Pickup.dart';
import 'package:rental_app/SelectDate.dart';
import 'package:rental_app/last.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoungeEnterAnimationScreen(),
    );
  }
}
