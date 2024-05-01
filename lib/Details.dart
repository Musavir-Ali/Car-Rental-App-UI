import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/BMW840i.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.deepPurple,
                          size: 30,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BMW 840i',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '2023',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 41, 23, 72),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.speed,
                                  color: Colors.deepPurple,
                                  size: 40,
                                ),
                                Text(
                                  '300Km/h',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.car_sport_sharp,
                                  color: Colors.deepPurple,
                                  size: 40,
                                ),
                                Text(
                                  '3.0L V6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.flash_sharp,
                                  color: Colors.deepPurple,
                                  size: 40,
                                ),
                                Text(
                                  '335 hp',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Text("9-Speed Automatic",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                            Spacer(),
                            Text("Parking Assistance",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Text("Parking Assistance",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                            SizedBox(
                              width: 45,
                            ),
                            Text("Turbo Engine",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Text("Collision Warning",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                            SizedBox(
                              width: 54,
                            ),
                            Text("4WD/AWD",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      )),
    );
  }
}
