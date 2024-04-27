import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:rental_app/License.dart'; // Assuming HomeScreen.dart exists

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => License()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Or your desired background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LoadingAnimationWidget.inkDrop(
              color: Colors.deepOrange, // Ink drop color
              size: 50, // Size of the animation
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text("We are verifying your details...",
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
