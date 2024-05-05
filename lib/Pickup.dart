import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // WebView ka import

class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  late WebViewController
      _webViewController; // WebViewController to control WebView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Pickup Location'),
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back, color: Colors.deepOrange, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4, // 40% screen height
      ),
    );
  }
}
