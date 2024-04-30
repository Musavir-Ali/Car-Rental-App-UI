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
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Rent a car Anytime",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBox(),
          ),
        ],
      )),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Search any car...",
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        prefixIcon: Icon(Icons.search,
            color: Colors.black), // Optional: Adds a search icon
        suffixIcon: Icon(
          Icons.filter_list,
          color: Colors.black,
        ), // Optional: Adds a filter icon
        filled: true, // Optional: Makes the background white or filled
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)), // Round corners
          borderSide: BorderSide(
            color: Colors.black,
            width: 1, // Border width
          ),
        ),
        // This removes the default blue border on focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2, // Width when focused
          ),
        ),
      ),
    );
  }
}
