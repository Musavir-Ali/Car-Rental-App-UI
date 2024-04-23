import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Ionicons.close_sharp,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Profile Photo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
