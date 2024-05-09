import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoungeEnterAnimationScreen extends StatefulWidget {
  @override
  State<LoungeEnterAnimationScreen> createState() =>
      _LoungeEnterAnimationScreenState();
}

class _LoungeEnterAnimationScreenState
    extends State<LoungeEnterAnimationScreen> {
  //LoungeController _loungeController = Get.isRegistered<LoungeController>() ? Get.find() : Get.put(LoungeController());

  @override
  // initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 4), () {
  //     Get.offNamed(Routes.loungeMainScreen, arguments: {'isFromDrawer': true});
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 10, 7),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Image.asset("assets/images/done.gif"),
      ),
    );
  }
}
