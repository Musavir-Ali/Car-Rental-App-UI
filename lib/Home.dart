import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108, 84, 145, 100),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text("Welcome to the Home Screen",
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
        ],
      )),
    );
  }
}
