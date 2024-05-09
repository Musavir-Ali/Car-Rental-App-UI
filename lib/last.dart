import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoungeEnterAnimationScreen extends StatefulWidget {
  @override
  State<LoungeEnterAnimationScreen> createState() =>
      _LoungeEnterAnimationScreenState();
}

class _LoungeEnterAnimationScreenState
    extends State<LoungeEnterAnimationScreen> {
  
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 10, 7),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Image.asset("assets/images/done.gif"),
      ),
    );
  }
}
