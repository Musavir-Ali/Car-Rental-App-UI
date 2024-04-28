import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(108, 84, 145, 100),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Rent a car Anytime",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      )),
    );
  }
}
