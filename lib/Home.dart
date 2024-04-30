import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 2, 12),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 15),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Ionicons.location_sharp,
                  color: Colors.deepOrange,
                ),
              ),
              Text("  New York",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Ionicons.notifications_outline,
                  color: Colors.deepOrange,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Rent a car Anytime",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SearchBox(),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Top Brands",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    "assets/images/Farrarilogo.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text("Popular Cars",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Text("View All",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 206,
                        width: 227,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 206,
                        width: 227,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 206,
                        width: 227,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 206,
                        width: 227,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 206,
                        width: 227,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          )
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
            width: 3, // Border width
          ),
        ),
        // This removes the default blue border on focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 6, // Width when focused
          ),
        ),
      ),
    );
  }
}
